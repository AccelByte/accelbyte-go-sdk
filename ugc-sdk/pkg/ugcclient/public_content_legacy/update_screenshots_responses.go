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

// UpdateScreenshotsReader is a Reader for the UpdateScreenshots structure.
type UpdateScreenshotsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateScreenshotsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateScreenshotsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateScreenshotsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateScreenshotsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateScreenshotsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateScreenshotsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateScreenshotsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateScreenshotsOK creates a UpdateScreenshotsOK with default headers values
func NewUpdateScreenshotsOK() *UpdateScreenshotsOK {
	return &UpdateScreenshotsOK{}
}

/*UpdateScreenshotsOK handles this case with default header values.

  Screenshot updated
*/
type UpdateScreenshotsOK struct {
	Payload *ugcclientmodels.ModelsUpdateScreenshotResponse
}

func (o *UpdateScreenshotsOK) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots][%d] updateScreenshotsOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateScreenshotsOK) ToJSONString() string {
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

func (o *UpdateScreenshotsOK) GetPayload() *ugcclientmodels.ModelsUpdateScreenshotResponse {
	return o.Payload
}

func (o *UpdateScreenshotsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsUpdateScreenshotResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateScreenshotsBadRequest creates a UpdateScreenshotsBadRequest with default headers values
func NewUpdateScreenshotsBadRequest() *UpdateScreenshotsBadRequest {
	return &UpdateScreenshotsBadRequest{}
}

/*UpdateScreenshotsBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772601</td><td>Malformed request</td></tr></table>
*/
type UpdateScreenshotsBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateScreenshotsBadRequest) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots][%d] updateScreenshotsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateScreenshotsBadRequest) ToJSONString() string {
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

func (o *UpdateScreenshotsBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateScreenshotsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateScreenshotsUnauthorized creates a UpdateScreenshotsUnauthorized with default headers values
func NewUpdateScreenshotsUnauthorized() *UpdateScreenshotsUnauthorized {
	return &UpdateScreenshotsUnauthorized{}
}

/*UpdateScreenshotsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateScreenshotsUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateScreenshotsUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots][%d] updateScreenshotsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateScreenshotsUnauthorized) ToJSONString() string {
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

func (o *UpdateScreenshotsUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateScreenshotsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateScreenshotsForbidden creates a UpdateScreenshotsForbidden with default headers values
func NewUpdateScreenshotsForbidden() *UpdateScreenshotsForbidden {
	return &UpdateScreenshotsForbidden{}
}

/*UpdateScreenshotsForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772604</td><td>User has been banned to update content</td></tr></table>
*/
type UpdateScreenshotsForbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateScreenshotsForbidden) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots][%d] updateScreenshotsForbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateScreenshotsForbidden) ToJSONString() string {
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

func (o *UpdateScreenshotsForbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateScreenshotsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateScreenshotsNotFound creates a UpdateScreenshotsNotFound with default headers values
func NewUpdateScreenshotsNotFound() *UpdateScreenshotsNotFound {
	return &UpdateScreenshotsNotFound{}
}

/*UpdateScreenshotsNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772603</td><td>Content not found</td></tr></table>
*/
type UpdateScreenshotsNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateScreenshotsNotFound) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots][%d] updateScreenshotsNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateScreenshotsNotFound) ToJSONString() string {
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

func (o *UpdateScreenshotsNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateScreenshotsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateScreenshotsInternalServerError creates a UpdateScreenshotsInternalServerError with default headers values
func NewUpdateScreenshotsInternalServerError() *UpdateScreenshotsInternalServerError {
	return &UpdateScreenshotsInternalServerError{}
}

/*UpdateScreenshotsInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772602</td><td>Unable to check user ban status/Unable to get updated ugc content</td></tr></table>
*/
type UpdateScreenshotsInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateScreenshotsInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots][%d] updateScreenshotsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateScreenshotsInternalServerError) ToJSONString() string {
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

func (o *UpdateScreenshotsInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateScreenshotsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
