import unittest
from backend.api.app import app

class ApiTestCase(unittest.TestCase):
    def setUp(self):
        self.app = app.test_client()
        self.app.testing = True

    def test_get_health_data(self):
        response = self.app.get('/api/health_data')
        self.assertEqual(response.status_code, 200)
        self.assertIn('Heart Rate', response.data.decode())

if __name__ == '__main__':
    unittest.main()
