// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_content_v2

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

// AdminDeleteContentScreenshotV2Reader is a Reader for the AdminDeleteContentScreenshotV2 structure.
type AdminDeleteContentScreenshotV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteContentScreenshotV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteContentScreenshotV2NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDeleteContentScreenshotV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteContentScreenshotV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeleteContentScreenshotV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteContentScreenshotV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteContentScreenshotV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots/{screenshotId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteContentScreenshotV2NoContent creates a AdminDeleteContentScreenshotV2NoContent with default headers values
func NewAdminDeleteContentScreenshotV2NoContent() *AdminDeleteContentScreenshotV2NoContent {
	return &AdminDeleteContentScreenshotV2NoContent{}
}

/*AdminDeleteContentScreenshotV2NoContent handles this case with default header values.

  Screenshot deleted
*/
type AdminDeleteContentScreenshotV2NoContent struct {
}

func (o *AdminDeleteContentScreenshotV2NoContent) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots/{screenshotId}][%d] adminDeleteContentScreenshotV2NoContent ", 204)
}

func (o *AdminDeleteContentScreenshotV2NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteContentScreenshotV2BadRequest creates a AdminDeleteContentScreenshotV2BadRequest with default headers values
func NewAdminDeleteContentScreenshotV2BadRequest() *AdminDeleteContentScreenshotV2BadRequest {
	return &AdminDeleteContentScreenshotV2BadRequest{}
}

/*AdminDeleteContentScreenshotV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772602</td><td>Unable to check user ban status/Unable to get updated ugc content</td></tr></table>
*/
type AdminDeleteContentScreenshotV2BadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteContentScreenshotV2BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots/{screenshotId}][%d] adminDeleteContentScreenshotV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDeleteContentScreenshotV2BadRequest) ToJSONString() string {
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

func (o *AdminDeleteContentScreenshotV2BadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteContentScreenshotV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteContentScreenshotV2Unauthorized creates a AdminDeleteContentScreenshotV2Unauthorized with default headers values
func NewAdminDeleteContentScreenshotV2Unauthorized() *AdminDeleteContentScreenshotV2Unauthorized {
	return &AdminDeleteContentScreenshotV2Unauthorized{}
}

/*AdminDeleteContentScreenshotV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminDeleteContentScreenshotV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteContentScreenshotV2Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots/{screenshotId}][%d] adminDeleteContentScreenshotV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteContentScreenshotV2Unauthorized) ToJSONString() string {
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

func (o *AdminDeleteContentScreenshotV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteContentScreenshotV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteContentScreenshotV2Forbidden creates a AdminDeleteContentScreenshotV2Forbidden with default headers values
func NewAdminDeleteContentScreenshotV2Forbidden() *AdminDeleteContentScreenshotV2Forbidden {
	return &AdminDeleteContentScreenshotV2Forbidden{}
}

/*AdminDeleteContentScreenshotV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772604</td><td>User has been banned to update content</td></tr></table>
*/
type AdminDeleteContentScreenshotV2Forbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteContentScreenshotV2Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots/{screenshotId}][%d] adminDeleteContentScreenshotV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeleteContentScreenshotV2Forbidden) ToJSONString() string {
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

func (o *AdminDeleteContentScreenshotV2Forbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteContentScreenshotV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteContentScreenshotV2NotFound creates a AdminDeleteContentScreenshotV2NotFound with default headers values
func NewAdminDeleteContentScreenshotV2NotFound() *AdminDeleteContentScreenshotV2NotFound {
	return &AdminDeleteContentScreenshotV2NotFound{}
}

/*AdminDeleteContentScreenshotV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772603</td><td>Content not found</td></tr></table>
*/
type AdminDeleteContentScreenshotV2NotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteContentScreenshotV2NotFound) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots/{screenshotId}][%d] adminDeleteContentScreenshotV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDeleteContentScreenshotV2NotFound) ToJSONString() string {
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

func (o *AdminDeleteContentScreenshotV2NotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteContentScreenshotV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteContentScreenshotV2InternalServerError creates a AdminDeleteContentScreenshotV2InternalServerError with default headers values
func NewAdminDeleteContentScreenshotV2InternalServerError() *AdminDeleteContentScreenshotV2InternalServerError {
	return &AdminDeleteContentScreenshotV2InternalServerError{}
}

/*AdminDeleteContentScreenshotV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772602</td><td>Unable to check user ban status/Unable to get updated ugc content</td></tr></table>
*/
type AdminDeleteContentScreenshotV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteContentScreenshotV2InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots/{screenshotId}][%d] adminDeleteContentScreenshotV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteContentScreenshotV2InternalServerError) ToJSONString() string {
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

func (o *AdminDeleteContentScreenshotV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteContentScreenshotV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
