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

// UpdateContentDirectReader is a Reader for the UpdateContentDirect structure.
type UpdateContentDirectReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateContentDirectReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateContentDirectOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateContentDirectBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateContentDirectUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateContentDirectForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateContentDirectNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateContentDirectInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateContentDirectOK creates a UpdateContentDirectOK with default headers values
func NewUpdateContentDirectOK() *UpdateContentDirectOK {
	return &UpdateContentDirectOK{}
}

/*UpdateContentDirectOK handles this case with default header values.

  Content updated
*/
type UpdateContentDirectOK struct {
	Payload *ugcclientmodels.ModelsCreateContentResponse
}

func (o *UpdateContentDirectOK) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}][%d] updateContentDirectOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateContentDirectOK) ToJSONString() string {
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

func (o *UpdateContentDirectOK) GetPayload() *ugcclientmodels.ModelsCreateContentResponse {
	return o.Payload
}

func (o *UpdateContentDirectOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateContentDirectBadRequest creates a UpdateContentDirectBadRequest with default headers values
func NewUpdateContentDirectBadRequest() *UpdateContentDirectBadRequest {
	return &UpdateContentDirectBadRequest{}
}

/*UpdateContentDirectBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772601</td><td>Malformed request</td></tr></table>
*/
type UpdateContentDirectBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateContentDirectBadRequest) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}][%d] updateContentDirectBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateContentDirectBadRequest) ToJSONString() string {
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

func (o *UpdateContentDirectBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateContentDirectBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateContentDirectUnauthorized creates a UpdateContentDirectUnauthorized with default headers values
func NewUpdateContentDirectUnauthorized() *UpdateContentDirectUnauthorized {
	return &UpdateContentDirectUnauthorized{}
}

/*UpdateContentDirectUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateContentDirectUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateContentDirectUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}][%d] updateContentDirectUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateContentDirectUnauthorized) ToJSONString() string {
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

func (o *UpdateContentDirectUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateContentDirectUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateContentDirectForbidden creates a UpdateContentDirectForbidden with default headers values
func NewUpdateContentDirectForbidden() *UpdateContentDirectForbidden {
	return &UpdateContentDirectForbidden{}
}

/*UpdateContentDirectForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772604</td><td>User has been banned to update content</td></tr></table>
*/
type UpdateContentDirectForbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateContentDirectForbidden) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}][%d] updateContentDirectForbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateContentDirectForbidden) ToJSONString() string {
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

func (o *UpdateContentDirectForbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateContentDirectForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateContentDirectNotFound creates a UpdateContentDirectNotFound with default headers values
func NewUpdateContentDirectNotFound() *UpdateContentDirectNotFound {
	return &UpdateContentDirectNotFound{}
}

/*UpdateContentDirectNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772603</td><td>Content not found</td></tr></table>
*/
type UpdateContentDirectNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateContentDirectNotFound) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}][%d] updateContentDirectNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateContentDirectNotFound) ToJSONString() string {
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

func (o *UpdateContentDirectNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateContentDirectNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateContentDirectInternalServerError creates a UpdateContentDirectInternalServerError with default headers values
func NewUpdateContentDirectInternalServerError() *UpdateContentDirectInternalServerError {
	return &UpdateContentDirectInternalServerError{}
}

/*UpdateContentDirectInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772602</td><td>Unable to check user ban status/Unable to get updated ugc content</td></tr></table>
*/
type UpdateContentDirectInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateContentDirectInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}][%d] updateContentDirectInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateContentDirectInternalServerError) ToJSONString() string {
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

func (o *UpdateContentDirectInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateContentDirectInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
