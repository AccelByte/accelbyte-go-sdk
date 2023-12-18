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

// AdminUploadContentScreenshotV2Reader is a Reader for the AdminUploadContentScreenshotV2 structure.
type AdminUploadContentScreenshotV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUploadContentScreenshotV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminUploadContentScreenshotV2Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUploadContentScreenshotV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUploadContentScreenshotV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUploadContentScreenshotV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUploadContentScreenshotV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUploadContentScreenshotV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUploadContentScreenshotV2Created creates a AdminUploadContentScreenshotV2Created with default headers values
func NewAdminUploadContentScreenshotV2Created() *AdminUploadContentScreenshotV2Created {
	return &AdminUploadContentScreenshotV2Created{}
}

/*AdminUploadContentScreenshotV2Created handles this case with default header values.

  Screenshot uploaded
*/
type AdminUploadContentScreenshotV2Created struct {
	Payload *ugcclientmodels.ModelsCreateScreenshotResponse
}

func (o *AdminUploadContentScreenshotV2Created) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots][%d] adminUploadContentScreenshotV2Created  %+v", 201, o.ToJSONString())
}

func (o *AdminUploadContentScreenshotV2Created) ToJSONString() string {
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

func (o *AdminUploadContentScreenshotV2Created) GetPayload() *ugcclientmodels.ModelsCreateScreenshotResponse {
	return o.Payload
}

func (o *AdminUploadContentScreenshotV2Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsCreateScreenshotResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUploadContentScreenshotV2BadRequest creates a AdminUploadContentScreenshotV2BadRequest with default headers values
func NewAdminUploadContentScreenshotV2BadRequest() *AdminUploadContentScreenshotV2BadRequest {
	return &AdminUploadContentScreenshotV2BadRequest{}
}

/*AdminUploadContentScreenshotV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772601</td><td>Malformed request</td></tr></table>
*/
type AdminUploadContentScreenshotV2BadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUploadContentScreenshotV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots][%d] adminUploadContentScreenshotV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUploadContentScreenshotV2BadRequest) ToJSONString() string {
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

func (o *AdminUploadContentScreenshotV2BadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUploadContentScreenshotV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUploadContentScreenshotV2Unauthorized creates a AdminUploadContentScreenshotV2Unauthorized with default headers values
func NewAdminUploadContentScreenshotV2Unauthorized() *AdminUploadContentScreenshotV2Unauthorized {
	return &AdminUploadContentScreenshotV2Unauthorized{}
}

/*AdminUploadContentScreenshotV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminUploadContentScreenshotV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUploadContentScreenshotV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots][%d] adminUploadContentScreenshotV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUploadContentScreenshotV2Unauthorized) ToJSONString() string {
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

func (o *AdminUploadContentScreenshotV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUploadContentScreenshotV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUploadContentScreenshotV2Forbidden creates a AdminUploadContentScreenshotV2Forbidden with default headers values
func NewAdminUploadContentScreenshotV2Forbidden() *AdminUploadContentScreenshotV2Forbidden {
	return &AdminUploadContentScreenshotV2Forbidden{}
}

/*AdminUploadContentScreenshotV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772604</td><td>User has been banned to update content</td></tr></table>
*/
type AdminUploadContentScreenshotV2Forbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUploadContentScreenshotV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots][%d] adminUploadContentScreenshotV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUploadContentScreenshotV2Forbidden) ToJSONString() string {
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

func (o *AdminUploadContentScreenshotV2Forbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUploadContentScreenshotV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUploadContentScreenshotV2NotFound creates a AdminUploadContentScreenshotV2NotFound with default headers values
func NewAdminUploadContentScreenshotV2NotFound() *AdminUploadContentScreenshotV2NotFound {
	return &AdminUploadContentScreenshotV2NotFound{}
}

/*AdminUploadContentScreenshotV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772603</td><td>Content not found</td></tr></table>
*/
type AdminUploadContentScreenshotV2NotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUploadContentScreenshotV2NotFound) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots][%d] adminUploadContentScreenshotV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUploadContentScreenshotV2NotFound) ToJSONString() string {
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

func (o *AdminUploadContentScreenshotV2NotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUploadContentScreenshotV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUploadContentScreenshotV2InternalServerError creates a AdminUploadContentScreenshotV2InternalServerError with default headers values
func NewAdminUploadContentScreenshotV2InternalServerError() *AdminUploadContentScreenshotV2InternalServerError {
	return &AdminUploadContentScreenshotV2InternalServerError{}
}

/*AdminUploadContentScreenshotV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772602</td><td>Unable to check user ban status/Unable to get updated ugc content</td></tr><tr><td>772605</td><td>Unable to save ugc content: failed generate upload URL</td></tr></table>
*/
type AdminUploadContentScreenshotV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUploadContentScreenshotV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots][%d] adminUploadContentScreenshotV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUploadContentScreenshotV2InternalServerError) ToJSONString() string {
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

func (o *AdminUploadContentScreenshotV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUploadContentScreenshotV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
