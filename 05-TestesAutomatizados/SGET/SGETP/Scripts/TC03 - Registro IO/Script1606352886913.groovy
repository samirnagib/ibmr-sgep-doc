import static com.kms.katalon.core.checkpoint.CheckpointFactory.findCheckpoint
import static com.kms.katalon.core.testcase.TestCaseFactory.findTestCase
import static com.kms.katalon.core.testdata.TestDataFactory.findTestData
import static com.kms.katalon.core.testobject.ObjectRepository.findTestObject
import static com.kms.katalon.core.testobject.ObjectRepository.findWindowsObject
import com.kms.katalon.core.checkpoint.Checkpoint as Checkpoint
import com.kms.katalon.core.cucumber.keyword.CucumberBuiltinKeywords as CucumberKW
import com.kms.katalon.core.mobile.keyword.MobileBuiltInKeywords as Mobile
import com.kms.katalon.core.model.FailureHandling as FailureHandling
import com.kms.katalon.core.testcase.TestCase as TestCase
import com.kms.katalon.core.testdata.TestData as TestData
import com.kms.katalon.core.testobject.TestObject as TestObject
import com.kms.katalon.core.webservice.keyword.WSBuiltInKeywords as WS
import com.kms.katalon.core.webui.keyword.WebUiBuiltInKeywords as WebUI
import com.kms.katalon.core.windows.keyword.WindowsBuiltinKeywords as Windows
import internal.GlobalVariable as GlobalVariable
import org.openqa.selenium.Keys as Keys

WebUI.openBrowser('')

WebUI.navigateToUrl('http://sgep.rf.gd/?i=1')

WebUI.setText(findTestObject('Object Repository/Registro_IO/Page_SGEP  Software de Gesto de Escala e Ponto/input_LOGIN_mat-input-0'), 
    'ipsum.primis@velvulputateeu.edu')

WebUI.setEncryptedText(findTestObject('Object Repository/Registro_IO/Page_SGEP  Software de Gesto de Escala e Ponto/input_Usurio_password'), 
    'iRO09YsUtExG1QIQiDIvWA==')

WebUI.click(findTestObject('Object Repository/Registro_IO/Page_SGEP  Software de Gesto de Escala e Ponto/button_ENTRAR'))

WebUI.click(findTestObject('Object Repository/Registro_IO/Page_SGEP  Software de Gesto de Escala e Ponto/i_Home_fas fa-calendar-plus'))

WebUI.click(findTestObject('Object Repository/Registro_IO/Page_SGEP  Software de Gesto de Escala e Ponto/button_Sim'))
sleep(5000)
WebUI.click(findTestObject('Object Repository/Registro_IO/Page_SGEP  Software de Gesto de Escala e Ponto/button_Ok'))
sleep(10000)
WebUI.click(findTestObject('Object Repository/Registro_IO/Page_SGEP  Software de Gesto de Escala e Ponto/i_Lanar Entrada_fas fa-calendar-minus'))
sleep(30000)
WebUI.click(findTestObject('Object Repository/Registro_IO/Page_SGEP  Software de Gesto de Escala e Ponto/button_Sim'))

WebUI.click(findTestObject('Object Repository/Registro_IO/Page_SGEP  Software de Gesto de Escala e Ponto/button_Ok'))
sleep(5000)
WebUI.click(findTestObject('Object Repository/Registro_IO/Page_SGEP  Software de Gesto de Escala e Ponto/i_Lanar Sada_fa fa-sign-out-alt'))

WebUI.click(findTestObject('Object Repository/Registro_IO/Page_SGEP  Software de Gesto de Escala e Ponto/button_Sim'))

WebUI.closeBrowser()

