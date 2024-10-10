// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package anonymization

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// AdminDeleteAllUserStatesReader is a Reader for the AdminDeleteAllUserStates structure.
type AdminDeleteAllUserStatesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteAllUserStatesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteAllUserStatesNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteAllUserStatesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteAllUserStatesNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteAllUserStatesInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/states returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteAllUserStatesNoContent creates a AdminDeleteAllUserStatesNoContent with default headers values
func NewAdminDeleteAllUserStatesNoContent() *AdminDeleteAllUserStatesNoContent {
	return &AdminDeleteAllUserStatesNoContent{}
}

/*AdminDeleteAllUserStatesNoContent handles this case with default header values.

  User stats deleted
*/
type AdminDeleteAllUserStatesNoContent struct {
}

func (o *AdminDeleteAllUserStatesNoContent) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/states][%d] adminDeleteAllUserStatesNoContent ", 204)
}

func (o *AdminDeleteAllUserStatesNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteAllUserStatesUnauthorized creates a AdminDeleteAllUserStatesUnauthorized with default headers values
func NewAdminDeleteAllUserStatesUnauthorized() *AdminDeleteAllUserStatesUnauthorized {
	return &AdminDeleteAllUserStatesUnauthorized{}
}

/*AdminDeleteAllUserStatesUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminDeleteAllUserStatesUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteAllUserStatesUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/states][%d] adminDeleteAllUserStatesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteAllUserStatesUnauthorized) ToJSONString() string {
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

func (o *AdminDeleteAllUserStatesUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteAllUserStatesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteAllUserStatesNotFound creates a AdminDeleteAllUserStatesNotFound with default headers values
func NewAdminDeleteAllUserStatesNotFound() *AdminDeleteAllUserStatesNotFound {
	return &AdminDeleteAllUserStatesNotFound{}
}

/*AdminDeleteAllUserStatesNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773602</td><td>user states are not found: content not found</td></tr></table>
*/
type AdminDeleteAllUserStatesNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteAllUserStatesNotFound) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/states][%d] adminDeleteAllUserStatesNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDeleteAllUserStatesNotFound) ToJSONString() string {
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

func (o *AdminDeleteAllUserStatesNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteAllUserStatesNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteAllUserStatesInternalServerError creates a AdminDeleteAllUserStatesInternalServerError with default headers values
func NewAdminDeleteAllUserStatesInternalServerError() *AdminDeleteAllUserStatesInternalServerError {
	return &AdminDeleteAllUserStatesInternalServerError{}
}

/*AdminDeleteAllUserStatesInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773601</td><td>Unable to get all user contents/Unable to delete user states</td></tr></table>
*/
type AdminDeleteAllUserStatesInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteAllUserStatesInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/states][%d] adminDeleteAllUserStatesInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteAllUserStatesInternalServerError) ToJSONString() string {
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

func (o *AdminDeleteAllUserStatesInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteAllUserStatesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
