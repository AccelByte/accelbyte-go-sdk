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

// PublicGetNamespaceScopedInputValidationsReader is a Reader for the PublicGetNamespaceScopedInputValidations structure.
type PublicGetNamespaceScopedInputValidationsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetNamespaceScopedInputValidationsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetNamespaceScopedInputValidationsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetNamespaceScopedInputValidationsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetNamespaceScopedInputValidationsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/public/namespaces/{namespace}/inputValidations returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetNamespaceScopedInputValidationsOK creates a PublicGetNamespaceScopedInputValidationsOK with default headers values
func NewPublicGetNamespaceScopedInputValidationsOK() *PublicGetNamespaceScopedInputValidationsOK {
	return &PublicGetNamespaceScopedInputValidationsOK{}
}

/*PublicGetNamespaceScopedInputValidationsOK handles this case with default header values.

  OK
*/
type PublicGetNamespaceScopedInputValidationsOK struct {
	Payload *iamclientmodels.ModelInputValidationsPublicResponse
}

func (o *PublicGetNamespaceScopedInputValidationsOK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/inputValidations][%d] publicGetNamespaceScopedInputValidationsOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetNamespaceScopedInputValidationsOK) ToJSONString() string {
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

func (o *PublicGetNamespaceScopedInputValidationsOK) GetPayload() *iamclientmodels.ModelInputValidationsPublicResponse {
	return o.Payload
}

func (o *PublicGetNamespaceScopedInputValidationsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelInputValidationsPublicResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetNamespaceScopedInputValidationsNotFound creates a PublicGetNamespaceScopedInputValidationsNotFound with default headers values
func NewPublicGetNamespaceScopedInputValidationsNotFound() *PublicGetNamespaceScopedInputValidationsNotFound {
	return &PublicGetNamespaceScopedInputValidationsNotFound{}
}

/*PublicGetNamespaceScopedInputValidationsNotFound handles this case with default header values.

  Data not found
*/
type PublicGetNamespaceScopedInputValidationsNotFound struct {
}

func (o *PublicGetNamespaceScopedInputValidationsNotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/inputValidations][%d] publicGetNamespaceScopedInputValidationsNotFound ", 404)
}

func (o *PublicGetNamespaceScopedInputValidationsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicGetNamespaceScopedInputValidationsInternalServerError creates a PublicGetNamespaceScopedInputValidationsInternalServerError with default headers values
func NewPublicGetNamespaceScopedInputValidationsInternalServerError() *PublicGetNamespaceScopedInputValidationsInternalServerError {
	return &PublicGetNamespaceScopedInputValidationsInternalServerError{}
}

/*PublicGetNamespaceScopedInputValidationsInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicGetNamespaceScopedInputValidationsInternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetNamespaceScopedInputValidationsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/inputValidations][%d] publicGetNamespaceScopedInputValidationsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetNamespaceScopedInputValidationsInternalServerError) ToJSONString() string {
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

func (o *PublicGetNamespaceScopedInputValidationsInternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetNamespaceScopedInputValidationsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
