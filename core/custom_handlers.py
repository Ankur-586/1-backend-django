from rest_framework.views import exception_handler
from rest_framework.response import Response
from rest_framework import status
from core.utils import CustomValidation

def custom_exception_handler(exc, context):
    # Call DRF's default exception handler first
    response = exception_handler(exc, context)
    # Set default status code
    rep_status = status.HTTP_500_INTERNAL_SERVER_ERROR
    if response is not None:
        try:
            rep_status = response.status_code
        except AttributeError:
            pass
        # Handle CustomValidation
        if isinstance(exc, CustomValidation):
            exc_list = str(exc).split("DETAIL: ")
            message = exc_list[-1] if exc_list else str(exc)
        else:
            # Handle other exceptions
            message = response.data.get('detail', 'An error occurred')
        return Response({
            "status": rep_status,
            "message": message,
            "data": {}
        }, status=rep_status)
    else:
        # Handle cases where response is None
        return Response({
            "status": rep_status,
            "message": "An unexpected error occurred",
            "data": {}
        }, status=rep_status)

'''
def custom_exception_handler(exc, context):
    # """
    # Custom exception handler for Django REST framework.

    # This function extends the default exception handling provided by DRF to include custom error formatting.
    # """
    # Call DRF's default exception handler
    response = exception_handler(exc, context)

    if response is None:
        # Fallback response if DRF's default handler does not handle the exception
        return Response({
            "status": status.HTTP_500_INTERNAL_SERVER_ERROR,
            "message": "An unexpected error occurred.",
            "data": []
        }, status=status.HTTP_500_INTERNAL_SERVER_ERROR)

    # Retrieve the status code from the response object
    rep_status = response.status_code

    # Check the type of exception to handle specific cases
    if isinstance(exc, CustomValidation):
        # Handle custom server errors
        exc_list = str(exc).split("DETAIL: ")
        message = exc_list[-1] if len(exc_list) > 1 else "Validation error occurred."
    else:
        # Handle validation errors from DRF
        if isinstance(response.data, dict):
            exc_list = []
            for field, errors in response.data.items():
                if isinstance(errors, list):
                    error_messages = [str(err) for err in errors]
                else:
                    error_messages = [str(errors)]
                exc_list.append(f"{field.capitalize()}: {', '.join(error_messages).replace('This', '')}")
            message = ' '.join(exc_list) if exc_list else "An error occurred."
        else:
            message = "An unexpected error occurred."
    
    # Purpose: This line constructs and returns a custom Response object with the formatted error message and the appropriate status code.
    
    return Response({
        "status": rep_status,
        "message": message,
        "data": {}
    }, status=rep_status)
'''
# ---------------------------------------------------------------------------------
'''
Do not delete
-------------
def custom_exception_handler(exc, context):
    # Call the default DRF exception handler first
    response = exception_handler(exc, context)

    # If response is None, it means DRF's default handler didn't handle the exception
    if response is None:
        if isinstance(exc, ResourceNotFound):
            response = Response({
                "status": exc.status_code,
                "message": exc.default_detail,
                "data": []
            }, status=exc.status_code)
        else:
            # For other types of exceptions, you can choose to handle them differently
            response = Response({
                "status": status.HTTP_500_INTERNAL_SERVER_ERROR,
                "message": "An unexpected error occurred.",
                "data": []
            }, status=status.HTTP_500_INTERNAL_SERVER_ERROR)
    return response
'''