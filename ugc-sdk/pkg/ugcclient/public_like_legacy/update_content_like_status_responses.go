// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_like_legacy

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

// UpdateContentLikeStatusReader is a Reader for the UpdateContentLikeStatus structure.
type UpdateContentLikeStatusReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateContentLikeStatusReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateContentLikeStatusOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateContentLikeStatusBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateContentLikeStatusUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateContentLikeStatusNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateContentLikeStatusInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /ugc/v1/public/namespaces/{namespace}/contents/{contentId}/like returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateContentLikeStatusOK creates a UpdateContentLikeStatusOK with default headers values
func NewUpdateContentLikeStatusOK() *UpdateContentLikeStatusOK {
	return &UpdateContentLikeStatusOK{}
}

/*UpdateContentLikeStatusOK handles this case with default header values.

  Update like/unlike status to a content
*/
type UpdateContentLikeStatusOK struct {
	Payload *ugcclientmodels.ModelsContentLikeResponse
}

func (o *UpdateContentLikeStatusOK) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/contents/{contentId}/like][%d] updateContentLikeStatusOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateContentLikeStatusOK) ToJSONString() string {
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

func (o *UpdateContentLikeStatusOK) GetPayload() *ugcclientmodels.ModelsContentLikeResponse {
	return o.Payload
}

func (o *UpdateContentLikeStatusOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsContentLikeResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateContentLikeStatusBadRequest creates a UpdateContentLikeStatusBadRequest with default headers values
func NewUpdateContentLikeStatusBadRequest() *UpdateContentLikeStatusBadRequest {
	return &UpdateContentLikeStatusBadRequest{}
}

/*UpdateContentLikeStatusBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>771000</td><td>Malformed request/Content not found/Unable to update like status: content not found</td></tr></table>
*/
type UpdateContentLikeStatusBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateContentLikeStatusBadRequest) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/contents/{contentId}/like][%d] updateContentLikeStatusBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateContentLikeStatusBadRequest) ToJSONString() string {
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

func (o *UpdateContentLikeStatusBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateContentLikeStatusBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateContentLikeStatusUnauthorized creates a UpdateContentLikeStatusUnauthorized with default headers values
func NewUpdateContentLikeStatusUnauthorized() *UpdateContentLikeStatusUnauthorized {
	return &UpdateContentLikeStatusUnauthorized{}
}

/*UpdateContentLikeStatusUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateContentLikeStatusUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateContentLikeStatusUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/contents/{contentId}/like][%d] updateContentLikeStatusUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateContentLikeStatusUnauthorized) ToJSONString() string {
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

func (o *UpdateContentLikeStatusUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateContentLikeStatusUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateContentLikeStatusNotFound creates a UpdateContentLikeStatusNotFound with default headers values
func NewUpdateContentLikeStatusNotFound() *UpdateContentLikeStatusNotFound {
	return &UpdateContentLikeStatusNotFound{}
}

/*UpdateContentLikeStatusNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>771000</td><td>Malformed request/Content not found/Unable to update like status: content not found</td></tr><tr><td>771001</td><td>unable to like content/Unable to update like status: database error</td></tr><tr><td>771000</td><td>Malformed request/Content not found/Unable to update like status: content not found</td></tr></table>
*/
type UpdateContentLikeStatusNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateContentLikeStatusNotFound) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/contents/{contentId}/like][%d] updateContentLikeStatusNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateContentLikeStatusNotFound) ToJSONString() string {
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

func (o *UpdateContentLikeStatusNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateContentLikeStatusNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateContentLikeStatusInternalServerError creates a UpdateContentLikeStatusInternalServerError with default headers values
func NewUpdateContentLikeStatusInternalServerError() *UpdateContentLikeStatusInternalServerError {
	return &UpdateContentLikeStatusInternalServerError{}
}

/*UpdateContentLikeStatusInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>771001</td><td>unable to like content/Unable to update like status: database error</td></tr></table>
*/
type UpdateContentLikeStatusInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateContentLikeStatusInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/contents/{contentId}/like][%d] updateContentLikeStatusInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateContentLikeStatusInternalServerError) ToJSONString() string {
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

func (o *UpdateContentLikeStatusInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateContentLikeStatusInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
