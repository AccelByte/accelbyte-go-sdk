// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_content_legacy

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

// UpdateContentShareCodeReader is a Reader for the UpdateContentShareCode structure.
type UpdateContentShareCodeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateContentShareCodeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateContentShareCodeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateContentShareCodeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateContentShareCodeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateContentShareCodeForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateContentShareCodeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUpdateContentShareCodeConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateContentShareCodeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/sharecode returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateContentShareCodeOK creates a UpdateContentShareCodeOK with default headers values
func NewUpdateContentShareCodeOK() *UpdateContentShareCodeOK {
	return &UpdateContentShareCodeOK{}
}

/*UpdateContentShareCodeOK handles this case with default header values.

  Content updated by sharecodes
*/
type UpdateContentShareCodeOK struct {
	Payload *ugcclientmodels.ModelsCreateContentResponse
}

func (o *UpdateContentShareCodeOK) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/sharecode][%d] updateContentShareCodeOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateContentShareCodeOK) ToJSONString() string {
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

func (o *UpdateContentShareCodeOK) GetPayload() *ugcclientmodels.ModelsCreateContentResponse {
	return o.Payload
}

func (o *UpdateContentShareCodeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsCreateContentResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateContentShareCodeBadRequest creates a UpdateContentShareCodeBadRequest with default headers values
func NewUpdateContentShareCodeBadRequest() *UpdateContentShareCodeBadRequest {
	return &UpdateContentShareCodeBadRequest{}
}

/*UpdateContentShareCodeBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772601</td><td>Malformed request</td></tr></table>
*/
type UpdateContentShareCodeBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateContentShareCodeBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/sharecode][%d] updateContentShareCodeBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateContentShareCodeBadRequest) ToJSONString() string {
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

func (o *UpdateContentShareCodeBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateContentShareCodeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateContentShareCodeUnauthorized creates a UpdateContentShareCodeUnauthorized with default headers values
func NewUpdateContentShareCodeUnauthorized() *UpdateContentShareCodeUnauthorized {
	return &UpdateContentShareCodeUnauthorized{}
}

/*UpdateContentShareCodeUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateContentShareCodeUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateContentShareCodeUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/sharecode][%d] updateContentShareCodeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateContentShareCodeUnauthorized) ToJSONString() string {
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

func (o *UpdateContentShareCodeUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateContentShareCodeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateContentShareCodeForbidden creates a UpdateContentShareCodeForbidden with default headers values
func NewUpdateContentShareCodeForbidden() *UpdateContentShareCodeForbidden {
	return &UpdateContentShareCodeForbidden{}
}

/*UpdateContentShareCodeForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type UpdateContentShareCodeForbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateContentShareCodeForbidden) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/sharecode][%d] updateContentShareCodeForbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateContentShareCodeForbidden) ToJSONString() string {
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

func (o *UpdateContentShareCodeForbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateContentShareCodeForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateContentShareCodeNotFound creates a UpdateContentShareCodeNotFound with default headers values
func NewUpdateContentShareCodeNotFound() *UpdateContentShareCodeNotFound {
	return &UpdateContentShareCodeNotFound{}
}

/*UpdateContentShareCodeNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772603</td><td>Content not found</td></tr></table>
*/
type UpdateContentShareCodeNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateContentShareCodeNotFound) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/sharecode][%d] updateContentShareCodeNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateContentShareCodeNotFound) ToJSONString() string {
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

func (o *UpdateContentShareCodeNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateContentShareCodeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateContentShareCodeConflict creates a UpdateContentShareCodeConflict with default headers values
func NewUpdateContentShareCodeConflict() *UpdateContentShareCodeConflict {
	return &UpdateContentShareCodeConflict{}
}

/*UpdateContentShareCodeConflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772606</td><td>Share code already used</td></tr></table>
*/
type UpdateContentShareCodeConflict struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateContentShareCodeConflict) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/sharecode][%d] updateContentShareCodeConflict  %+v", 409, o.ToJSONString())
}

func (o *UpdateContentShareCodeConflict) ToJSONString() string {
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

func (o *UpdateContentShareCodeConflict) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateContentShareCodeConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateContentShareCodeInternalServerError creates a UpdateContentShareCodeInternalServerError with default headers values
func NewUpdateContentShareCodeInternalServerError() *UpdateContentShareCodeInternalServerError {
	return &UpdateContentShareCodeInternalServerError{}
}

/*UpdateContentShareCodeInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772602</td><td>Unable to check user ban status/Unable to get updated ugc content</td></tr></table>
*/
type UpdateContentShareCodeInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateContentShareCodeInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/sharecode][%d] updateContentShareCodeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateContentShareCodeInternalServerError) ToJSONString() string {
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

func (o *UpdateContentShareCodeInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateContentShareCodeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
