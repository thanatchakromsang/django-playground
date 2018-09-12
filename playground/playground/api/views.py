from rest_framework import status
from rest_framework.response import Response
from rest_framework.views import APIView


class CalculationView(APIView):
    def get(self, request):
        params = request.query_params.get('test')
        return Response(
            status=status.HTTP_200_OK,
            data={'detail': params}
        )

    def post(self, request):
        pass
