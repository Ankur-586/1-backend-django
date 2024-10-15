from rest_framework.response import Response

class CustomResponse(Response):
    """
    A custom response class for Django REST Framework that adds a `status_code`
    attribute to the response data.
    """
    def __init__(self, data=None, status_code=None, message=None, **kwargs):
        # Ensure data is a dictionary and contains the necessary fields
        response_data = {
            'status_code': status_code if status_code is not None else 200,
            'message': message if message is not None else "",
            'data': data if data is not None else []
        }
        # Initialize the parent Response class
        super().__init__(data=response_data, **kwargs)
'''
from rest_framework import status as http_status
class CustomResponse(Response):
    """
    A custom response class for Django REST Framework that adds a `status_code`
    attribute to the response data.
    """
    def __init__(self, data=None, status_code=None, message=None, **kwargs):
        # Ensure data is not wrapped in a list unless it's intended to be
        if isinstance(data, list):
            response_data = {
                'status_code': status_code if status_code is not None else http_status.HTTP_200_OK,
                'message': message,
                'data': data
            }
        else:
            response_data = {
                'status_code': status_code if status_code is not None else http_status.HTTP_200_OK,
                'message': message,
                'data': [data] if data is not None else []
            }
        # Pass the response_data and other kwargs to the super class
        super().__init__(data=response_data, **kwargs)
'''

# from rest_framework.response import Response
# from rest_framework import status as http_status

# class CustomResponse(Response):
#     """
#     A custom response class for Django REST Framework that adds a `status_code`
#     attribute to the response data.
#     """
#     def __init__(self, data=None, status_code=None, message=None, **kwargs):
#         # Ensure data is not wrapped in a list unless it's intended to be
#         if isinstance(data, list):
#             response_data = {
#                 'status_code': status_code if status_code is not None else http_status.HTTP_200_OK,
#                 'message': message if message is not None else "",
#                 'data': data if data is not None else []
#             }
#         else:
#             response_data = {
#                 'status_code': status_code if status_code is not None else http_status.HTTP_200_OK,
#                 'message': message if message is not None else "",
#                 'data': [data] if data is not None else []
#             }
#         # Pass the response_data and other kwargs to the super class
#         super().__init__(data=response_data, **kwargs)
        
'''
from rest_framework import status as http_status
class CustomResponse(Response):
    """
    A custom response class for Django REST Framework that adds a `status_code`
    attribute to the response data.
    """
    def __init__(self, data=None, status_code=None, message=None, **kwargs):
        # Ensure data is not wrapped in a list unless it's intended to be
        if isinstance(data, list):
            response_data = {
                'status_code': status_code if status_code is not None else http_status.HTTP_200_OK,
                'message': message,
                'data': data
            }
        else:
            response_data = {
                'status_code': status_code if status_code is not None else http_status.HTTP_200_OK,
                'message': message,
                'data': [data] if data is not None else []
            }
        # Pass the response_data and other kwargs to the super class
        super().__init__(data=response_data, **kwargs)
page no: 1,
total pages: suppose 30,
index per page: 10,
url : ""
'''
