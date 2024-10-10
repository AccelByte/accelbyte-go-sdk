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

// GetUserByPlatformUserIDReader is a Reader for the GetUserByPlatformUserID structure.
type GetUserByPlatformUserIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserByPlatformUserIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserByPlatformUserIDOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetUserByPlatformUserIDBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetUserByPlatformUserIDUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetUserByPlatformUserIDForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetUserByPlatformUserIDNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/namespaces/{namespace}/users/byPlatformUserID returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserByPlatformUserIDOK creates a GetUserByPlatformUserIDOK with default headers values
func NewGetUserByPlatformUserIDOK() *GetUserByPlatformUserIDOK {
	return &GetUserByPlatformUserIDOK{}
}

/*GetUserByPlatformUserIDOK handles this case with default header values.

  OK
*/
type GetUserByPlatformUserIDOK struct {
	Payload *iamclientmodels.ModelPublicUserResponse
}

func (o *GetUserByPlatformUserIDOK) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/byPlatformUserID][%d] getUserByPlatformUserIdOK  %+v", 200, o.ToJSONString())
}

func (o *GetUserByPlatformUserIDOK) ToJSONString() string {
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

func (o *GetUserByPlatformUserIDOK) GetPayload() *iamclientmodels.ModelPublicUserResponse {
	return o.Payload
}

func (o *GetUserByPlatformUserIDOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelPublicUserResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserByPlatformUserIDBadRequest creates a GetUserByPlatformUserIDBadRequest with default headers values
func NewGetUserByPlatformUserIDBadRequest() *GetUserByPlatformUserIDBadRequest {
	return &GetUserByPlatformUserIDBadRequest{}
}

/*GetUserByPlatformUserIDBadRequest handles this case with default header values.

  Invalid request
*/
type GetUserByPlatformUserIDBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetUserByPlatformUserIDBadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/byPlatformUserID][%d] getUserByPlatformUserIdBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetUserByPlatformUserIDBadRequest) ToJSONString() string {
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

func (o *GetUserByPlatformUserIDBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetUserByPlatformUserIDBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserByPlatformUserIDUnauthorized creates a GetUserByPlatformUserIDUnauthorized with default headers values
func NewGetUserByPlatformUserIDUnauthorized() *GetUserByPlatformUserIDUnauthorized {
	return &GetUserByPlatformUserIDUnauthorized{}
}

/*GetUserByPlatformUserIDUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetUserByPlatformUserIDUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetUserByPlatformUserIDUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/byPlatformUserID][%d] getUserByPlatformUserIdUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetUserByPlatformUserIDUnauthorized) ToJSONString() string {
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

func (o *GetUserByPlatformUserIDUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetUserByPlatformUserIDUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserByPlatformUserIDForbidden creates a GetUserByPlatformUserIDForbidden with default headers values
func NewGetUserByPlatformUserIDForbidden() *GetUserByPlatformUserIDForbidden {
	return &GetUserByPlatformUserIDForbidden{}
}

/*GetUserByPlatformUserIDForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type GetUserByPlatformUserIDForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetUserByPlatformUserIDForbidden) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/byPlatformUserID][%d] getUserByPlatformUserIdForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetUserByPlatformUserIDForbidden) ToJSONString() string {
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

func (o *GetUserByPlatformUserIDForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetUserByPlatformUserIDForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserByPlatformUserIDNotFound creates a GetUserByPlatformUserIDNotFound with default headers values
func NewGetUserByPlatformUserIDNotFound() *GetUserByPlatformUserIDNotFound {
	return &GetUserByPlatformUserIDNotFound{}
}

/*GetUserByPlatformUserIDNotFound handles this case with default header values.

  Data not found
*/
type GetUserByPlatformUserIDNotFound struct {
}

func (o *GetUserByPlatformUserIDNotFound) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/byPlatformUserID][%d] getUserByPlatformUserIdNotFound ", 404)
}

func (o *GetUserByPlatformUserIDNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
