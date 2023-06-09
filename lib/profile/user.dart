class User{
  final String imagePath;
  final String name;
  final String phone;
  final String email;
  final String Bio;

const User({
  required this.imagePath,
  required this.name,
required this.phone,
required this.email,
required this.Bio,
});
}

class UserPreferences{
  static const myUser=User(
    imagePath: 'assets/images/pro.png', 
    name: ' Sarah Johnson',
    Bio: 'I\'m Sarah Johnson, a passionate software engineer with a love\n for creating innovative solutions. I specialize in web development\n and enjoy working with cutting-edge technologies like React and \nNode.js. When I\'m not coding, you can find me exploring the \ngreat outdoors, hiking, and capturing beautiful landscapes with \nmy camera. I believe in continuous learning and strive to stay \nupdated with the latest trends in the tech industry. Let\'s connect \nand collaborate on exciting projects!', 
    email: 'sarah@gmail.com', 
    phone: '123456789',
  );
}