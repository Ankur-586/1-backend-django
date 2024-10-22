from rest_framework.views import exception_handler
from rest_framework.response import Response
from rest_framework import status
from core.utils import CustomValidation

def custom_exception_handler(exc, context):

    response = exception_handler(exc, context)

    try:
        rep_status = response.status_code
    except Exception as e:
        rep_status = status.HTTP_500_INTERNAL_SERVER_ERROR
        
    if isinstance(exc, CustomValidation):
        exc_list = str(exc).split("DETAIL: ")
    else:
        exc_list = [f"{field.capitalize()}{str(error[0]).replace('This', '')}" for field, error in response.data.items()]

    return Response({"status":rep_status, 
                     "message": exc_list[-1] , 
                     "data":{}}, status=rep_status)

'''
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