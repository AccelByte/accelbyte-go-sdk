// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_staging_content

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

// DeleteUserStagingContentByIDReader is a Reader for the DeleteUserStagingContentByID structure.
type DeleteUserStagingContentByIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteUserStagingContentByIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteUserStagingContentByIDNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteUserStagingContentByIDUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteUserStagingContentByIDForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteUserStagingContentByIDNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteUserStagingContentByIDInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents/{contentId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteUserStagingContentByIDNoContent creates a DeleteUserStagingContentByIDNoContent with default headers values
func NewDeleteUserStagingContentByIDNoContent() *DeleteUserStagingContentByIDNoContent {
	return &DeleteUserStagingContentByIDNoContent{}
}

/*DeleteUserStagingContentByIDNoContent handles this case with default header values.

  staging content deleted
*/
type DeleteUserStagingContentByIDNoContent struct {
}

func (o *DeleteUserStagingContentByIDNoContent) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents/{contentId}][%d] deleteUserStagingContentByIdNoContent ", 204)
}

func (o *DeleteUserStagingContentByIDNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteUserStagingContentByIDUnauthorized creates a DeleteUserStagingContentByIDUnauthorized with default headers values
func NewDeleteUserStagingContentByIDUnauthorized() *DeleteUserStagingContentByIDUnauthorized {
	return &DeleteUserStagingContentByIDUnauthorized{}
}

/*DeleteUserStagingContentByIDUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteUserStagingContentByIDUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *DeleteUserStagingContentByIDUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents/{contentId}][%d] deleteUserStagingContentByIdUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteUserStagingContentByIDUnauthorized) ToJSONString() string {
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

func (o *DeleteUserStagingContentByIDUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteUserStagingContentByIDUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteUserStagingContentByIDForbidden creates a DeleteUserStagingContentByIDForbidden with default headers values
func NewDeleteUserStagingContentByIDForbidden() *DeleteUserStagingContentByIDForbidden {
	return &DeleteUserStagingContentByIDForbidden{}
}

/*DeleteUserStagingContentByIDForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type DeleteUserStagingContentByIDForbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *DeleteUserStagingContentByIDForbidden) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents/{contentId}][%d] deleteUserStagingContentByIdForbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteUserStagingContentByIDForbidden) ToJSONString() string {
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

func (o *DeleteUserStagingContentByIDForbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteUserStagingContentByIDForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteUserStagingContentByIDNotFound creates a DeleteUserStagingContentByIDNotFound with default headers values
func NewDeleteUserStagingContentByIDNotFound() *DeleteUserStagingContentByIDNotFound {
	return &DeleteUserStagingContentByIDNotFound{}
}

/*DeleteUserStagingContentByIDNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>774417</td><td>staging content not found</td></tr></table>
*/
type DeleteUserStagingContentByIDNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *DeleteUserStagingContentByIDNotFound) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents/{contentId}][%d] deleteUserStagingContentByIdNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteUserStagingContentByIDNotFound) ToJSONString() string {
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

func (o *DeleteUserStagingContentByIDNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteUserStagingContentByIDNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteUserStagingContentByIDInternalServerError creates a DeleteUserStagingContentByIDInternalServerError with default headers values
func NewDeleteUserStagingContentByIDInternalServerError() *DeleteUserStagingContentByIDInternalServerError {
	return &DeleteUserStagingContentByIDInternalServerError{}
}

/*DeleteUserStagingContentByIDInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>774418</td><td>unable to delete staging content</td></tr></table>
*/
type DeleteUserStagingContentByIDInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *DeleteUserStagingContentByIDInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents/{contentId}][%d] deleteUserStagingContentByIdInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteUserStagingContentByIDInternalServerError) ToJSONString() string {
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

func (o *DeleteUserStagingContentByIDInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteUserStagingContentByIDInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
