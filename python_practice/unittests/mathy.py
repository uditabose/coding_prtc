
import unittest

class Mathy:
    def __init__(self):
        pass

    def add(self, a, b):
        if a == None or b == None:
            raise TypeError("one or both are None")

        if isinstance(a, bool) or isinstance(b, bool):
            raise TypeError("one or both are bool")

        if (not isinstance(a, (int, float, complex)) 
            or not isinstance(b, (int, float, complex))):
            return None

        return a + b


class MathyTest(unittest.TestCase):
    def setUp(self):
        self.mathy = Mathy()

    def tearDown(self):
        self.mathy = None

    def test_add_a_none(self):
        with self.assertRaises(TypeError):
            self.mathy.add(None, 10)

    def test_add_b_none(self):
        with self.assertRaises(TypeError):
            self.mathy.add(10, None)

    def test_add_both_none(self):
        with self.assertRaises(TypeError):
            self.mathy.add(None, None)

    def test_add_a_bool(self):
        with self.assertRaises(TypeError):
            self.assertIsNone(self.mathy.add(True, 10))

    def test_add_b_bool(self):
        with self.assertRaises(TypeError):
            self.assertIsNone(self.mathy.add(10, True))

    def test_add_both_bool(self):
        with self.assertRaises(TypeError):
            self.assertIsNone(self.mathy.add(True, False))

    def test_add_non_num(self):
        self.assertIsNone(self.mathy.add("a", 10))
        self.assertIsNone(self.mathy.add(10, "b"))
        self.assertIsNone(self.mathy.add("a", "b"))

    def test_add_num(self):
        self.assertEqual(self.mathy.add(20, 10), 30)
        self.assertEqual(self.mathy.add(20, 0), 20)
        self.assertEqual(self.mathy.add(20, -10), 10)

if __name__ == '__main__':
    unittest.main()
    #mathy_test.main()
