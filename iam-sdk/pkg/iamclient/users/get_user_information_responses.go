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

// GetUserInformationReader is a Reader for the GetUserInformation structure.
type GetUserInformationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserInformationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserInformationOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetUserInformationUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetUserInformationForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetUserInformationNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/namespaces/{namespace}/users/{userId}/information returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserInformationOK creates a GetUserInformationOK with default headers values
func NewGetUserInformationOK() *GetUserInformationOK {
	return &GetUserInformationOK{}
}

/*GetUserInformationOK handles this case with default header values.

  OK
*/
type GetUserInformationOK struct {
	Payload *iamclientmodels.ModelUserInformation
}

func (o *GetUserInformationOK) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/{userId}/information][%d] getUserInformationOK  %+v", 200, o.ToJSONString())
}

func (o *GetUserInformationOK) ToJSONString() string {
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

func (o *GetUserInformationOK) GetPayload() *iamclientmodels.ModelUserInformation {
	return o.Payload
}

func (o *GetUserInformationOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelUserInformation)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserInformationUnauthorized creates a GetUserInformationUnauthorized with default headers values
func NewGetUserInformationUnauthorized() *GetUserInformationUnauthorized {
	return &GetUserInformationUnauthorized{}
}

/*GetUserInformationUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetUserInformationUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetUserInformationUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/{userId}/information][%d] getUserInformationUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetUserInformationUnauthorized) ToJSONString() string {
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

func (o *GetUserInformationUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetUserInformationUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUserInformationForbidden creates a GetUserInformationForbidden with default headers values
func NewGetUserInformationForbidden() *GetUserInformationForbidden {
	return &GetUserInformationForbidden{}
}

/*GetUserInformationForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type GetUserInformationForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetUserInformationForbidden) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/{userId}/information][%d] getUserInformationForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetUserInformationForbidden) ToJSONString() string {
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

func (o *GetUserInformationForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetUserInformationForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUserInformationNotFound creates a GetUserInformationNotFound with default headers values
func NewGetUserInformationNotFound() *GetUserInformationNotFound {
	return &GetUserInformationNotFound{}
}

/*GetUserInformationNotFound handles this case with default header values.

  Data not found
*/
type GetUserInformationNotFound struct {
}

func (o *GetUserInformationNotFound) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/{userId}/information][%d] getUserInformationNotFound ", 404)
}

func (o *GetUserInformationNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
