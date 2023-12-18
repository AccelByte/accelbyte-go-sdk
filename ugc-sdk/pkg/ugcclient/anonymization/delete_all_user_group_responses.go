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

// DeleteAllUserGroupReader is a Reader for the DeleteAllUserGroup structure.
type DeleteAllUserGroupReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteAllUserGroupReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteAllUserGroupNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteAllUserGroupUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteAllUserGroupNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteAllUserGroupInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteAllUserGroupNoContent creates a DeleteAllUserGroupNoContent with default headers values
func NewDeleteAllUserGroupNoContent() *DeleteAllUserGroupNoContent {
	return &DeleteAllUserGroupNoContent{}
}

/*DeleteAllUserGroupNoContent handles this case with default header values.

  groups deleted
*/
type DeleteAllUserGroupNoContent struct {
}

func (o *DeleteAllUserGroupNoContent) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups][%d] deleteAllUserGroupNoContent ", 204)
}

func (o *DeleteAllUserGroupNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteAllUserGroupUnauthorized creates a DeleteAllUserGroupUnauthorized with default headers values
func NewDeleteAllUserGroupUnauthorized() *DeleteAllUserGroupUnauthorized {
	return &DeleteAllUserGroupUnauthorized{}
}

/*DeleteAllUserGroupUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteAllUserGroupUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *DeleteAllUserGroupUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups][%d] deleteAllUserGroupUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteAllUserGroupUnauthorized) ToJSONString() string {
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

func (o *DeleteAllUserGroupUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteAllUserGroupUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteAllUserGroupNotFound creates a DeleteAllUserGroupNotFound with default headers values
func NewDeleteAllUserGroupNotFound() *DeleteAllUserGroupNotFound {
	return &DeleteAllUserGroupNotFound{}
}

/*DeleteAllUserGroupNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773302</td><td>Groups not found</td></tr></table>
*/
type DeleteAllUserGroupNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *DeleteAllUserGroupNotFound) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups][%d] deleteAllUserGroupNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteAllUserGroupNotFound) ToJSONString() string {
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

func (o *DeleteAllUserGroupNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteAllUserGroupNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteAllUserGroupInternalServerError creates a DeleteAllUserGroupInternalServerError with default headers values
func NewDeleteAllUserGroupInternalServerError() *DeleteAllUserGroupInternalServerError {
	return &DeleteAllUserGroupInternalServerError{}
}

/*DeleteAllUserGroupInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773301</td><td>Unable to find all user group</td></tr></table>
*/
type DeleteAllUserGroupInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *DeleteAllUserGroupInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups][%d] deleteAllUserGroupInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteAllUserGroupInternalServerError) ToJSONString() string {
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

func (o *DeleteAllUserGroupInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteAllUserGroupInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
