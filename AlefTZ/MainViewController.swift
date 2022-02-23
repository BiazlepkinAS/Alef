
import UIKit

class MainViewController: UIViewController, UITextFieldDelegate {
    var kidsCount = [Int]()
    
    private lazy var mainTitle: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 24)
        label.textColor = .black
        label.text = "Personal data"
        label.numberOfLines = 1
        return label
    }()
    
    private lazy var nameView: UIView = {
        let view = UIView()
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.layer.cornerRadius = 10
        return view
    }()
    
    private lazy var namePlacrholder: UILabel = {
        let label = UILabel()
        label.textColor = .lightGray
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = .lightGray
        label.text = "First name, Last name"
        return label
    }()
    
    private lazy var nameTextField: UITextField = {
        let textField = UITextField()
        textField.textColor = .black
        textField.textAlignment = .left
        textField.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        textField.returnKeyType = .next
        textField.text = ""
        return textField
    }()
    
    private lazy var ageView: UIView = {
        let view = UIView()
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.layer.cornerRadius = 10
        return view
    }()
    
    private lazy var agePlacrholder: UILabel = {
        let label = UILabel()
        label.textColor = .lightGray
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = .lightGray
        label.text = "Age"
        return label
    }()
    private lazy var ageTextField: UITextField = {
        let textField = UITextField()
        textField.textColor = .black
        textField.textAlignment = .left
        textField.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        textField.returnKeyType = .next
        textField.text = ""
        return textField
    }()
    
    private lazy var kidsLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 24)
        label.textColor = .black
        label.text = "Kids (max 5)"
        
        return label
    }()
    
    private lazy var addKidsButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "plus"), for: .normal)
        button.setTitle("Add kids", for: .normal)
        button.layer.borderColor = UIColor.blue.cgColor
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 20
        button.setTitleColor(.blue, for: .normal)
        button.tintColor = .blue
        button.titleLabel?.textAlignment = .center
        button.addTarget(self, action: #selector(addKidsForm), for: .touchUpInside)
        return button
    }()
    
    private lazy var delKidsButton: UIButton = {
        let button = UIButton()
        button.setTitle("Delete", for: .normal)
        button.setTitleColor(.systemCyan, for: .normal)
        button.addTarget(self, action: #selector(delKidsForm), for: .touchUpInside)
        button.tintColor = .blue
        return button
    }()
    
    private lazy var kidsFormView: UIView = {
        let view = UIView()
        return view
    }()
    
    private lazy var  kidsNameView: UIView = {
        let view = UIView()
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.layer.cornerRadius = 10
        return view
    }()
    
    private lazy var kidsNamePlacrholder: UILabel = {
        let label = UILabel()
        label.textColor = .lightGray
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = .lightGray
        label.text = "Name"
        return label
    }()
    private lazy var kidsNameTextField: UITextField = {
        let textField = UITextField()
        textField.textColor = .black
        textField.textAlignment = .left
        textField.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        textField.returnKeyType = .next
        textField.text = ""
        return textField
    }()
    
    private lazy var  kidsAgeView: UIView = {
        let view = UIView()
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.layer.cornerRadius = 10
        return view
    }()
    
    private lazy var kidsAgePlacrholder: UILabel = {
        let label = UILabel()
        label.textColor = .lightGray
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = .lightGray
        label.text = "Age"
        return label
    }()
    private lazy var kidsAgeTextField: UITextField = {
        let textField = UITextField()
        textField.textColor = .black
        textField.textAlignment = .left
        textField.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        textField.returnKeyType = .next
        textField.text = ""
        return textField
    }()
    
    private lazy var clearForm: UIButton = {
        let button = UIButton()
        button.setTitle("Clear", for: .normal)
        button.layer.borderColor = UIColor.red.cgColor
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 30
        button.setTitleColor(UIColor.red, for: .normal)
        button.addTarget(self, action: #selector(clearAllForms), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareUI()
    }
    
    private func prepareUI() {
        view.addSubview(mainTitle)
        mainTitle.translatesAutoresizingMaskIntoConstraints = false
        mainTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        mainTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        mainTitle.backgroundColor = .clear
        
        view.addSubview(nameView)
        nameView.translatesAutoresizingMaskIntoConstraints = false
        nameView.topAnchor.constraint(equalTo: mainTitle.bottomAnchor, constant: 20).isActive = true
        nameView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        nameView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        nameView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        nameView.backgroundColor = .clear
        
        view.addSubview(namePlacrholder)
        namePlacrholder.translatesAutoresizingMaskIntoConstraints = false
        namePlacrholder.topAnchor.constraint(equalTo: nameView.topAnchor, constant: 5).isActive = true
        namePlacrholder.leadingAnchor.constraint(equalTo: nameView.leadingAnchor, constant: 10).isActive = true
        
        view.addSubview(nameTextField)
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        nameTextField.topAnchor.constraint(equalTo: namePlacrholder.bottomAnchor, constant: 5).isActive = true
        nameTextField.leadingAnchor.constraint(equalTo: nameView.leadingAnchor, constant: 10).isActive = true
        nameTextField.trailingAnchor.constraint(equalTo: nameView.trailingAnchor, constant: -10).isActive = true
        nameTextField.backgroundColor = .clear
        
        view.addSubview(ageView)
        ageView.translatesAutoresizingMaskIntoConstraints = false
        ageView.topAnchor.constraint(equalTo: nameView.bottomAnchor, constant: 10).isActive = true
        ageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        ageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        ageView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        ageView.backgroundColor = .clear
        
        view.addSubview(agePlacrholder)
        agePlacrholder.translatesAutoresizingMaskIntoConstraints = false
        agePlacrholder.topAnchor.constraint(equalTo: ageView.topAnchor, constant: 5).isActive = true
        agePlacrholder.leadingAnchor.constraint(equalTo: ageView.leadingAnchor, constant: 10).isActive = true
        
        view.addSubview(ageTextField)
        ageTextField.translatesAutoresizingMaskIntoConstraints = false
        ageTextField.topAnchor.constraint(equalTo: agePlacrholder.bottomAnchor, constant: 5).isActive = true
        ageTextField.leadingAnchor.constraint(equalTo: ageView.leadingAnchor, constant: 10).isActive = true
        ageTextField.trailingAnchor.constraint(equalTo: ageView.trailingAnchor, constant: -10).isActive = true
        ageTextField.backgroundColor = .clear
        
        view.addSubview(kidsLabel)
        kidsLabel.translatesAutoresizingMaskIntoConstraints = false
        kidsLabel.topAnchor.constraint(equalTo: ageView.bottomAnchor, constant: 10).isActive = true
        kidsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        
        view.addSubview(addKidsButton)
        addKidsButton.translatesAutoresizingMaskIntoConstraints = false
        addKidsButton.topAnchor.constraint(equalTo: ageView.bottomAnchor, constant: 10).isActive = true
        addKidsButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        addKidsButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        addKidsButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        view.addSubview(clearForm)
        clearForm.translatesAutoresizingMaskIntoConstraints = false
        clearForm.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        clearForm.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        clearForm.widthAnchor.constraint(equalToConstant: view.frame.size.width / 2).isActive = true
        clearForm.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        self.nameTextField.delegate = self
        self.ageTextField.delegate = self
        self.kidsNameTextField.delegate = self
        self.kidsAgeTextField.delegate = self
    }
    
    @objc func addKidsForm() {
        addNewView(to: self.view)
    }
    
    @objc func delKidsForm() {
    }
    @objc func clearAllForms(sender: AnyObject) {
        let optionsMenu = UIAlertController(title: nil, message: "choose your destiny", preferredStyle: .actionSheet)
        let resetAction = UIAlertAction(title: "Reset Data", style: .default, handler: { (alert: UIAlertAction!) -> Void in
            self.nameTextField.text = ""
            self.ageTextField.text = ""
            self.kidsNameTextField.text = ""
            self.kidsAgeTextField.text = ""
            print("reset")
        })
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: { (alert: UIAlertAction!) -> Void in
            print("cancel")
        })
        
        optionsMenu.addAction(resetAction)
        optionsMenu.addAction(cancelAction)
        self.present(optionsMenu, animated: true, completion: nil)
    }
    
    private func addNewView(to container: UIView) {
        
        let newView = UIView()
        container.addSubview(newView)
        newView.backgroundColor = .clear
        newView.translatesAutoresizingMaskIntoConstraints = false
        newView.topAnchor.constraint(equalTo: addKidsButton.bottomAnchor, constant: 30).isActive = true
        newView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        newView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        newView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        newView.addSubview(kidsFormView)
        kidsFormView.translatesAutoresizingMaskIntoConstraints = false
        kidsFormView.topAnchor.constraint(equalTo: newView.topAnchor).isActive = true
        kidsFormView.leadingAnchor.constraint(equalTo: newView.leadingAnchor).isActive = true
        kidsFormView.bottomAnchor.constraint(equalTo: newView.bottomAnchor).isActive = true
        kidsFormView.widthAnchor.constraint(equalToConstant: view.frame.size.width/2).isActive = true
        kidsFormView.backgroundColor = .clear
        
        kidsFormView.addSubview(kidsNameView)
        kidsNameView.translatesAutoresizingMaskIntoConstraints = false
        kidsNameView.topAnchor.constraint(equalTo: kidsFormView.topAnchor, constant: 10).isActive = true
        kidsNameView.leadingAnchor.constraint(equalTo: kidsFormView.leadingAnchor, constant: 10).isActive = true
        kidsNameView.trailingAnchor.constraint(equalTo: kidsFormView.trailingAnchor, constant: -10).isActive = true
        kidsNameView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        kidsNameView.backgroundColor = .clear
        
        kidsNameView.addSubview(kidsNamePlacrholder)
        kidsNamePlacrholder.translatesAutoresizingMaskIntoConstraints = false
        kidsNamePlacrholder.topAnchor.constraint(equalTo: kidsNameView.topAnchor, constant: 5).isActive = true
        kidsNamePlacrholder.leadingAnchor.constraint(equalTo: kidsNameView.leadingAnchor, constant: 10).isActive = true
        
        kidsNameView.addSubview(kidsNameTextField)
        kidsNameTextField.translatesAutoresizingMaskIntoConstraints = false
        kidsNameTextField.topAnchor.constraint(equalTo: kidsNamePlacrholder.bottomAnchor, constant: 5).isActive = true
        kidsNameTextField.leadingAnchor.constraint(equalTo: kidsNameView.leadingAnchor, constant: 10).isActive = true
        kidsNameTextField.trailingAnchor.constraint(equalTo: kidsNameView.trailingAnchor, constant: -10).isActive = true
        kidsNameTextField.backgroundColor = .clear
        
        kidsFormView.addSubview(kidsAgeView)
        kidsAgeView.translatesAutoresizingMaskIntoConstraints = false
        kidsAgeView.topAnchor.constraint(equalTo: kidsNameView.bottomAnchor, constant: 10).isActive = true
        kidsAgeView.leadingAnchor.constraint(equalTo: kidsFormView.leadingAnchor, constant: 10).isActive = true
        kidsAgeView.trailingAnchor.constraint(equalTo: kidsFormView.trailingAnchor, constant: -10).isActive = true
        kidsAgeView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        kidsAgeView.backgroundColor = .clear
        
        kidsAgeView.addSubview(kidsAgePlacrholder)
        kidsAgePlacrholder.translatesAutoresizingMaskIntoConstraints = false
        kidsAgePlacrholder.topAnchor.constraint(equalTo: kidsAgeView.topAnchor, constant: 5).isActive = true
        kidsAgePlacrholder.leadingAnchor.constraint(equalTo: kidsAgeView.leadingAnchor, constant: 10).isActive = true
        
        kidsAgeView.addSubview(kidsAgeTextField)
        kidsAgeTextField.translatesAutoresizingMaskIntoConstraints = false
        kidsAgeTextField.topAnchor.constraint(equalTo: kidsAgePlacrholder.bottomAnchor, constant: 10).isActive = true
        kidsAgeTextField.leadingAnchor.constraint(equalTo: kidsAgeView.leadingAnchor, constant: 10).isActive = true
        kidsAgeTextField.trailingAnchor.constraint(equalTo: kidsAgeView.trailingAnchor, constant: -10).isActive = true
        kidsAgeTextField.backgroundColor = .clear
        
        newView.addSubview(delKidsButton)
        delKidsButton.translatesAutoresizingMaskIntoConstraints = false
        delKidsButton.topAnchor.constraint(equalTo: newView.topAnchor, constant: 15).isActive = true
        delKidsButton.leadingAnchor.constraint(equalTo: kidsFormView.trailingAnchor, constant: 10).isActive = true
        delKidsButton.trailingAnchor.constraint(equalTo: newView.trailingAnchor, constant: -10).isActive = true
        delKidsButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        delKidsButton.backgroundColor = .clear
    }
    
}
