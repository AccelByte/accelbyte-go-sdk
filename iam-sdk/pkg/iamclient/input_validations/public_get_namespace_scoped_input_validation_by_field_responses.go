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

// PublicGetNamespaceScopedInputValidationByFieldReader is a Reader for the PublicGetNamespaceScopedInputValidationByField structure.
type PublicGetNamespaceScopedInputValidationByFieldReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetNamespaceScopedInputValidationByFieldReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetNamespaceScopedInputValidationByFieldOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetNamespaceScopedInputValidationByFieldNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetNamespaceScopedInputValidationByFieldInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/public/namespaces/{namespace}/inputValidations/{field} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetNamespaceScopedInputValidationByFieldOK creates a PublicGetNamespaceScopedInputValidationByFieldOK with default headers values
func NewPublicGetNamespaceScopedInputValidationByFieldOK() *PublicGetNamespaceScopedInputValidationByFieldOK {
	return &PublicGetNamespaceScopedInputValidationByFieldOK{}
}

/*PublicGetNamespaceScopedInputValidationByFieldOK handles this case with default header values.

  OK
*/
type PublicGetNamespaceScopedInputValidationByFieldOK struct {
	Payload *iamclientmodels.ModelInputValidationConfigVersion
}

func (o *PublicGetNamespaceScopedInputValidationByFieldOK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/inputValidations/{field}][%d] publicGetNamespaceScopedInputValidationByFieldOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetNamespaceScopedInputValidationByFieldOK) ToJSONString() string {
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

func (o *PublicGetNamespaceScopedInputValidationByFieldOK) GetPayload() *iamclientmodels.ModelInputValidationConfigVersion {
	return o.Payload
}

func (o *PublicGetNamespaceScopedInputValidationByFieldOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetNamespaceScopedInputValidationByFieldNotFound creates a PublicGetNamespaceScopedInputValidationByFieldNotFound with default headers values
func NewPublicGetNamespaceScopedInputValidationByFieldNotFound() *PublicGetNamespaceScopedInputValidationByFieldNotFound {
	return &PublicGetNamespaceScopedInputValidationByFieldNotFound{}
}

/*PublicGetNamespaceScopedInputValidationByFieldNotFound handles this case with default header values.

  Data not found
*/
type PublicGetNamespaceScopedInputValidationByFieldNotFound struct {
}

func (o *PublicGetNamespaceScopedInputValidationByFieldNotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/inputValidations/{field}][%d] publicGetNamespaceScopedInputValidationByFieldNotFound ", 404)
}

func (o *PublicGetNamespaceScopedInputValidationByFieldNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicGetNamespaceScopedInputValidationByFieldInternalServerError creates a PublicGetNamespaceScopedInputValidationByFieldInternalServerError with default headers values
func NewPublicGetNamespaceScopedInputValidationByFieldInternalServerError() *PublicGetNamespaceScopedInputValidationByFieldInternalServerError {
	return &PublicGetNamespaceScopedInputValidationByFieldInternalServerError{}
}

/*PublicGetNamespaceScopedInputValidationByFieldInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicGetNamespaceScopedInputValidationByFieldInternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetNamespaceScopedInputValidationByFieldInternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/inputValidations/{field}][%d] publicGetNamespaceScopedInputValidationByFieldInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetNamespaceScopedInputValidationByFieldInternalServerError) ToJSONString() string {
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

func (o *PublicGetNamespaceScopedInputValidationByFieldInternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetNamespaceScopedInputValidationByFieldInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
