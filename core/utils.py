from rest_framework.exceptions import APIException
from rest_framework import status

from django.utils.encoding import force_str
from django.http import JsonResponse

class CustomValidation(APIException):
    status_code = status.HTTP_500_INTERNAL_SERVER_ERROR
    default_detail = 'A server error occurred.'

    def __init__(self, detail, status_code):
        if status_code is not None:self.status_code = status_code
        if detail is not None:
            self.detail = force_str(detail)
        else: 
            self.detail = {'detail': force_str(self.default_detail)}

def custom_page_not_found_view(request, exception=None):
    '''
    Response is not working. JsonResponse is working
    '''
    response_data = {
        'status': status.HTTP_404_NOT_FOUND,
        'message': 'The resource you are looking for was not found.',
        'data': []
    }
    return JsonResponse(response_data, status=status.HTTP_404_NOT_FOUND)

'''
Do Not Delete 
--------------
class CustomValidation(APIException):
    status_code = status.HTTP_500_INTERNAL_SERVER_ERROR
    default_detail = 'A server error occurred..'

    def __init__(self, detail=None, status_code=None):
        # Set status_code if provided, else use default
        if status_code is not None:
            self.status_code = status_code
        
        # Set detail if provided, else use default
        if detail is not None:
            self.detail = force_str(detail)
        else:
            self.detail = self.default_detail

        # Ensure detail is always a dictionary
        if isinstance(self.detail, str):
            self.detail = {'detail': self.detail}
-----------------------------------------------------------------
class ResourceNotFound(APIException):
    status_code = status.HTTP_404_NOT_FOUND
    default_detail = 'Resource Not Found'

    def __init__(self, detail=None, code=None):
        if detail is not None:
            self.detail = detail
        if code is not None:
            self.default_code = code
        super().__init__(detail=self.detail, code=self.default_code)
----------------------------------------------------------
class CustomValidation(APIException):
    status_code = status.HTTP_500_INTERNAL_SERVER_ERROR
    default_detail = 'A server error occurred..'

    def __init__(self, detail=None, status_code=None):
        # Set status_code if provided, else use default
        if status_code is not None:
            self.status_code = status_code
        
        # Set detail if provided, else use default
        if detail is not None:
            self.detail = force_str(detail)
        else:
            self.detail = {'detail': force_str(self.default_detail)}
'''
