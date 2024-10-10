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

// GetUserByUserIDReader is a Reader for the GetUserByUserID structure.
type GetUserByUserIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserByUserIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserByUserIDOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetUserByUserIDNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetUserByUserIDInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/namespaces/{namespace}/users/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserByUserIDOK creates a GetUserByUserIDOK with default headers values
func NewGetUserByUserIDOK() *GetUserByUserIDOK {
	return &GetUserByUserIDOK{}
}

/*GetUserByUserIDOK handles this case with default header values.

  OK
*/
type GetUserByUserIDOK struct {
	Payload *iamclientmodels.ModelUserResponse
}

func (o *GetUserByUserIDOK) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/{userId}][%d] getUserByUserIdOK  %+v", 200, o.ToJSONString())
}

func (o *GetUserByUserIDOK) ToJSONString() string {
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

func (o *GetUserByUserIDOK) GetPayload() *iamclientmodels.ModelUserResponse {
	return o.Payload
}

func (o *GetUserByUserIDOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelUserResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserByUserIDNotFound creates a GetUserByUserIDNotFound with default headers values
func NewGetUserByUserIDNotFound() *GetUserByUserIDNotFound {
	return &GetUserByUserIDNotFound{}
}

/*GetUserByUserIDNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr><tr><td>10139</td><td>platform account not found</td></tr></table>
*/
type GetUserByUserIDNotFound struct {
}

func (o *GetUserByUserIDNotFound) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/{userId}][%d] getUserByUserIdNotFound ", 404)
}

func (o *GetUserByUserIDNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetUserByUserIDInternalServerError creates a GetUserByUserIDInternalServerError with default headers values
func NewGetUserByUserIDInternalServerError() *GetUserByUserIDInternalServerError {
	return &GetUserByUserIDInternalServerError{}
}

/*GetUserByUserIDInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type GetUserByUserIDInternalServerError struct {
}

func (o *GetUserByUserIDInternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/{userId}][%d] getUserByUserIdInternalServerError ", 500)
}

func (o *GetUserByUserIDInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
