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

// GetUserLoginHistoriesReader is a Reader for the GetUserLoginHistories structure.
type GetUserLoginHistoriesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserLoginHistoriesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserLoginHistoriesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetUserLoginHistoriesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetUserLoginHistoriesForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetUserLoginHistoriesNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/namespaces/{namespace}/users/{userId}/logins/histories returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserLoginHistoriesOK creates a GetUserLoginHistoriesOK with default headers values
func NewGetUserLoginHistoriesOK() *GetUserLoginHistoriesOK {
	return &GetUserLoginHistoriesOK{}
}

/*GetUserLoginHistoriesOK handles this case with default header values.

  OK
*/
type GetUserLoginHistoriesOK struct {
	Payload *iamclientmodels.ModelLoginHistoriesResponse
}

func (o *GetUserLoginHistoriesOK) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/{userId}/logins/histories][%d] getUserLoginHistoriesOK  %+v", 200, o.ToJSONString())
}

func (o *GetUserLoginHistoriesOK) ToJSONString() string {
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

func (o *GetUserLoginHistoriesOK) GetPayload() *iamclientmodels.ModelLoginHistoriesResponse {
	return o.Payload
}

func (o *GetUserLoginHistoriesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelLoginHistoriesResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserLoginHistoriesUnauthorized creates a GetUserLoginHistoriesUnauthorized with default headers values
func NewGetUserLoginHistoriesUnauthorized() *GetUserLoginHistoriesUnauthorized {
	return &GetUserLoginHistoriesUnauthorized{}
}

/*GetUserLoginHistoriesUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetUserLoginHistoriesUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetUserLoginHistoriesUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/{userId}/logins/histories][%d] getUserLoginHistoriesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetUserLoginHistoriesUnauthorized) ToJSONString() string {
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

func (o *GetUserLoginHistoriesUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetUserLoginHistoriesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserLoginHistoriesForbidden creates a GetUserLoginHistoriesForbidden with default headers values
func NewGetUserLoginHistoriesForbidden() *GetUserLoginHistoriesForbidden {
	return &GetUserLoginHistoriesForbidden{}
}

/*GetUserLoginHistoriesForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type GetUserLoginHistoriesForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetUserLoginHistoriesForbidden) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/{userId}/logins/histories][%d] getUserLoginHistoriesForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetUserLoginHistoriesForbidden) ToJSONString() string {
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

func (o *GetUserLoginHistoriesForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetUserLoginHistoriesForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserLoginHistoriesNotFound creates a GetUserLoginHistoriesNotFound with default headers values
func NewGetUserLoginHistoriesNotFound() *GetUserLoginHistoriesNotFound {
	return &GetUserLoginHistoriesNotFound{}
}

/*GetUserLoginHistoriesNotFound handles this case with default header values.

  Data not found
*/
type GetUserLoginHistoriesNotFound struct {
}

func (o *GetUserLoginHistoriesNotFound) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/{userId}/logins/histories][%d] getUserLoginHistoriesNotFound ", 404)
}

func (o *GetUserLoginHistoriesNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
