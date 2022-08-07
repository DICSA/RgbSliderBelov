//
//  ViewController.swift
//  RgbSliderBelov
//
//  Created by Белов Руслан on 06.08.2022.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var rgbView: UIView!

    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!

    @IBOutlet weak var redLabelValue: UILabel!
    @IBOutlet weak var blueLabelValue: UILabel!
    @IBOutlet weak var greenLabelValue: UILabel!

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!



    override func viewDidLoad() {
        super.viewDidLoad()
        setupMainView()
        setupEgbLabel()
        setupEgbLabelValue()
        setupSliders()
    }



    @IBAction func redSliderAction() {
        redLabelValue.text = String(format: "%.0f", redSlider.value)
        rgbView.backgroundColor = UIColor(red: CGFloat(redSlider.value)/255,
                                          green: CGFloat(greenSlider.value)/255,
                                          blue: CGFloat(blueSlider.value)/255,
                                          alpha: 1)
    }

    @IBAction func blueSliderAction() {
        blueLabelValue.text = String(format: "%.0f", blueSlider.value)
        rgbView.backgroundColor = UIColor(red: CGFloat(redSlider.value)/255,
                                          green: CGFloat(greenSlider.value)/255,
                                          blue: CGFloat(blueSlider.value)/255,
                                          alpha: 1)
    }

    @IBAction func greenSliderAction() {
        greenLabelValue.text = String(format: "%.0f", greenSlider.value)
        rgbView.backgroundColor = UIColor(red: CGFloat(redSlider.value)/255,
                                          green: CGFloat(greenSlider.value)/255,
                                          blue: CGFloat(blueSlider.value)/255,
                                          alpha: 1)
    }


    private func setupMainView() {
        rgbView.layer.cornerRadius = 10
    }

    private func setupEgbLabel() {
        redLabel.text = "RED:"
        blueLabel.text = "BlUE:"
        greenLabel.text = "GREEN:"
    }

    private func setupEgbLabelValue() {
        redLabelValue.text = "0"
        blueLabelValue.text = "0"
        greenLabelValue.text = "0"
    }

    private func setupSliders() {
        redSlider.value = 1
        redSlider.minimumValue = 0
        redSlider.maximumValue = 255
        redSlider.minimumTrackTintColor = .red

        blueSlider.value = 1
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 255
        blueSlider.minimumTrackTintColor = .blue

        greenSlider.value = 1
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 255
        greenSlider.minimumTrackTintColor = .green
    }

}

