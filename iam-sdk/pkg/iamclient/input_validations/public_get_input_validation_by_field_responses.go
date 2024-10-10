// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package input_validations

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// PublicGetInputValidationByFieldReader is a Reader for the PublicGetInputValidationByField structure.
type PublicGetInputValidationByFieldReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetInputValidationByFieldReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetInputValidationByFieldOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetInputValidationByFieldNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetInputValidationByFieldInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/public/inputValidations/{field} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetInputValidationByFieldOK creates a PublicGetInputValidationByFieldOK with default headers values
func NewPublicGetInputValidationByFieldOK() *PublicGetInputValidationByFieldOK {
	return &PublicGetInputValidationByFieldOK{}
}

/*PublicGetInputValidationByFieldOK handles this case with default header values.

  OK
*/
type PublicGetInputValidationByFieldOK struct {
	Payload *iamclientmodels.ModelInputValidationConfigVersion
}

func (o *PublicGetInputValidationByFieldOK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/inputValidations/{field}][%d] publicGetInputValidationByFieldOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetInputValidationByFieldOK) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *PublicGetInputValidationByFieldOK) GetPayload() *iamclientmodels.ModelInputValidationConfigVersion {
	return o.Payload
}

func (o *PublicGetInputValidationByFieldOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelInputValidationConfigVersion)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetInputValidationByFieldNotFound creates a PublicGetInputValidationByFieldNotFound with default headers values
func NewPublicGetInputValidationByFieldNotFound() *PublicGetInputValidationByFieldNotFound {
	return &PublicGetInputValidationByFieldNotFound{}
}

/*PublicGetInputValidationByFieldNotFound handles this case with default header values.

  Data not found
*/
type PublicGetInputValidationByFieldNotFound struct {
}

func (o *PublicGetInputValidationByFieldNotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/inputValidations/{field}][%d] publicGetInputValidationByFieldNotFound ", 404)
}

func (o *PublicGetInputValidationByFieldNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicGetInputValidationByFieldInternalServerError creates a PublicGetInputValidationByFieldInternalServerError with default headers values
func NewPublicGetInputValidationByFieldInternalServerError() *PublicGetInputValidationByFieldInternalServerError {
	return &PublicGetInputValidationByFieldInternalServerError{}
}

/*PublicGetInputValidationByFieldInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicGetInputValidationByFieldInternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetInputValidationByFieldInternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/inputValidations/{field}][%d] publicGetInputValidationByFieldInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetInputValidationByFieldInternalServerError) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *PublicGetInputValidationByFieldInternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetInputValidationByFieldInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
