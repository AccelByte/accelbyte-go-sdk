// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

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

// PublicValidateUserInputReader is a Reader for the PublicValidateUserInput structure.
type PublicValidateUserInputReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicValidateUserInputReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicValidateUserInputOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicValidateUserInputInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/public/namespaces/{namespace}/users/input/validation returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicValidateUserInputOK creates a PublicValidateUserInputOK with default headers values
func NewPublicValidateUserInputOK() *PublicValidateUserInputOK {
	return &PublicValidateUserInputOK{}
}

/*PublicValidateUserInputOK handles this case with default header values.

  OK
*/
type PublicValidateUserInputOK struct {
	Payload *iamclientmodels.ModelUserInputValidationResponse
}

func (o *PublicValidateUserInputOK) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/input/validation][%d] publicValidateUserInputOK  %+v", 200, o.ToJSONString())
}

func (o *PublicValidateUserInputOK) ToJSONString() string {
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

func (o *PublicValidateUserInputOK) GetPayload() *iamclientmodels.ModelUserInputValidationResponse {
	return o.Payload
}

func (o *PublicValidateUserInputOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelUserInputValidationResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicValidateUserInputInternalServerError creates a PublicValidateUserInputInternalServerError with default headers values
func NewPublicValidateUserInputInternalServerError() *PublicValidateUserInputInternalServerError {
	return &PublicValidateUserInputInternalServerError{}
}

/*PublicValidateUserInputInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicValidateUserInputInternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicValidateUserInputInternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/input/validation][%d] publicValidateUserInputInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicValidateUserInputInternalServerError) ToJSONString() string {
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

func (o *PublicValidateUserInputInternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicValidateUserInputInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
