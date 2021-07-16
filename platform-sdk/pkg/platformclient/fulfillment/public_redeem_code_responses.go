// Code generated by go-swagger; DO NOT EDIT.

package fulfillment

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// PublicRedeemCodeReader is a Reader for the PublicRedeemCode structure.
type PublicRedeemCodeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicRedeemCodeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicRedeemCodeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicRedeemCodeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicRedeemCodeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicRedeemCodeConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /public/namespaces/{namespace}/users/{userId}/fulfillment/code returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicRedeemCodeOK creates a PublicRedeemCodeOK with default headers values
func NewPublicRedeemCodeOK() *PublicRedeemCodeOK {
	return &PublicRedeemCodeOK{}
}

/*PublicRedeemCodeOK handles this case with default header values.

  successful operation
*/
type PublicRedeemCodeOK struct {
	Payload *platformclientmodels.FulfillmentResult
}

func (o *PublicRedeemCodeOK) Error() string {
	return fmt.Sprintf("[POST /public/namespaces/{namespace}/users/{userId}/fulfillment/code][%d] publicRedeemCodeOK  %+v", 200, o.Payload)
}

func (o *PublicRedeemCodeOK) GetPayload() *platformclientmodels.FulfillmentResult {
	return o.Payload
}

func (o *PublicRedeemCodeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(platformclientmodels.FulfillmentResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicRedeemCodeBadRequest creates a PublicRedeemCodeBadRequest with default headers values
func NewPublicRedeemCodeBadRequest() *PublicRedeemCodeBadRequest {
	return &PublicRedeemCodeBadRequest{}
}

/*PublicRedeemCodeBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>35121</td><td>Transaction amount [{actualAmount}] exceed max amount [{maxAmount}] per day</td></tr><tr><td>35122</td><td>Transaction amount [{actualAmount}] exceed max amount [{maxAmount}] per transaction</td></tr><tr><td>35123</td><td>Wallet [{walletId}] is inactive</td></tr><tr><td>35125</td><td>Balance exceed max balance [{maxAmount}]</td></tr><tr><td>38121</td><td>Duplicate permanent item exists</td></tr></table>
*/
type PublicRedeemCodeBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicRedeemCodeBadRequest) Error() string {
	return fmt.Sprintf("[POST /public/namespaces/{namespace}/users/{userId}/fulfillment/code][%d] publicRedeemCodeBadRequest  %+v", 400, o.Payload)
}

func (o *PublicRedeemCodeBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicRedeemCodeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicRedeemCodeNotFound creates a PublicRedeemCodeNotFound with default headers values
func NewPublicRedeemCodeNotFound() *PublicRedeemCodeNotFound {
	return &PublicRedeemCodeNotFound{}
}

/*PublicRedeemCodeNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr><tr><td>37142</td><td>Code [{code}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type PublicRedeemCodeNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicRedeemCodeNotFound) Error() string {
	return fmt.Sprintf("[POST /public/namespaces/{namespace}/users/{userId}/fulfillment/code][%d] publicRedeemCodeNotFound  %+v", 404, o.Payload)
}

func (o *PublicRedeemCodeNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicRedeemCodeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicRedeemCodeConflict creates a PublicRedeemCodeConflict with default headers values
func NewPublicRedeemCodeConflict() *PublicRedeemCodeConflict {
	return &PublicRedeemCodeConflict{}
}

/*PublicRedeemCodeConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>37172</td><td>Campaign [{campaignId}] is inactive in namespace [{namespace}]</td></tr><tr><td>37173</td><td>Code [{code}] is inactive in namespace [{namespace}]</td></tr><tr><td>37174</td><td>Exceeded max redeem count per code [{maxCount}]</td></tr><tr><td>37175</td><td>Exceeded max redeem count per code per user [{maxCount}]</td></tr><tr><td>37177</td><td>Code redemption not started</td></tr><tr><td>37178</td><td>Code redemption already ended</td></tr><tr><td>20006</td><td>optimistic lock</td></tr></table>
*/
type PublicRedeemCodeConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicRedeemCodeConflict) Error() string {
	return fmt.Sprintf("[POST /public/namespaces/{namespace}/users/{userId}/fulfillment/code][%d] publicRedeemCodeConflict  %+v", 409, o.Payload)
}

func (o *PublicRedeemCodeConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicRedeemCodeConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
