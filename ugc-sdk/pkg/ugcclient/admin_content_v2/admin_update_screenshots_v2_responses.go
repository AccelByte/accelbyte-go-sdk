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

// AdminUpdateScreenshotsV2Reader is a Reader for the AdminUpdateScreenshotsV2 structure.
type AdminUpdateScreenshotsV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateScreenshotsV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateScreenshotsV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateScreenshotsV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateScreenshotsV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateScreenshotsV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateScreenshotsV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateScreenshotsV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateScreenshotsV2OK creates a AdminUpdateScreenshotsV2OK with default headers values
func NewAdminUpdateScreenshotsV2OK() *AdminUpdateScreenshotsV2OK {
	return &AdminUpdateScreenshotsV2OK{}
}

/*AdminUpdateScreenshotsV2OK handles this case with default header values.

  Screenshot updated
*/
type AdminUpdateScreenshotsV2OK struct {
	Payload *ugcclientmodels.ModelsUpdateScreenshotResponse
}

func (o *AdminUpdateScreenshotsV2OK) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots][%d] adminUpdateScreenshotsV2OK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateScreenshotsV2OK) ToJSONString() string {
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

func (o *AdminUpdateScreenshotsV2OK) GetPayload() *ugcclientmodels.ModelsUpdateScreenshotResponse {
	return o.Payload
}

func (o *AdminUpdateScreenshotsV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateScreenshotsV2BadRequest creates a AdminUpdateScreenshotsV2BadRequest with default headers values
func NewAdminUpdateScreenshotsV2BadRequest() *AdminUpdateScreenshotsV2BadRequest {
	return &AdminUpdateScreenshotsV2BadRequest{}
}

/*AdminUpdateScreenshotsV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772601</td><td>Malformed request</td></tr><tr><td>772602</td><td>Unable to check user ban status/Unable to get updated ugc content</td></tr></table>
*/
type AdminUpdateScreenshotsV2BadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateScreenshotsV2BadRequest) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots][%d] adminUpdateScreenshotsV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateScreenshotsV2BadRequest) ToJSONString() string {
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

func (o *AdminUpdateScreenshotsV2BadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateScreenshotsV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateScreenshotsV2Unauthorized creates a AdminUpdateScreenshotsV2Unauthorized with default headers values
func NewAdminUpdateScreenshotsV2Unauthorized() *AdminUpdateScreenshotsV2Unauthorized {
	return &AdminUpdateScreenshotsV2Unauthorized{}
}

/*AdminUpdateScreenshotsV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminUpdateScreenshotsV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateScreenshotsV2Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots][%d] adminUpdateScreenshotsV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateScreenshotsV2Unauthorized) ToJSONString() string {
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

func (o *AdminUpdateScreenshotsV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateScreenshotsV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateScreenshotsV2Forbidden creates a AdminUpdateScreenshotsV2Forbidden with default headers values
func NewAdminUpdateScreenshotsV2Forbidden() *AdminUpdateScreenshotsV2Forbidden {
	return &AdminUpdateScreenshotsV2Forbidden{}
}

/*AdminUpdateScreenshotsV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772604</td><td>User has been banned to update content</td></tr></table>
*/
type AdminUpdateScreenshotsV2Forbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateScreenshotsV2Forbidden) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots][%d] adminUpdateScreenshotsV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateScreenshotsV2Forbidden) ToJSONString() string {
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

func (o *AdminUpdateScreenshotsV2Forbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateScreenshotsV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateScreenshotsV2NotFound creates a AdminUpdateScreenshotsV2NotFound with default headers values
func NewAdminUpdateScreenshotsV2NotFound() *AdminUpdateScreenshotsV2NotFound {
	return &AdminUpdateScreenshotsV2NotFound{}
}

/*AdminUpdateScreenshotsV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772603</td><td>Content not found</td></tr></table>
*/
type AdminUpdateScreenshotsV2NotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateScreenshotsV2NotFound) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots][%d] adminUpdateScreenshotsV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateScreenshotsV2NotFound) ToJSONString() string {
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

func (o *AdminUpdateScreenshotsV2NotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateScreenshotsV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateScreenshotsV2InternalServerError creates a AdminUpdateScreenshotsV2InternalServerError with default headers values
func NewAdminUpdateScreenshotsV2InternalServerError() *AdminUpdateScreenshotsV2InternalServerError {
	return &AdminUpdateScreenshotsV2InternalServerError{}
}

/*AdminUpdateScreenshotsV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772602</td><td>Unable to check user ban status/Unable to get updated ugc content</td></tr></table>
*/
type AdminUpdateScreenshotsV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateScreenshotsV2InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots][%d] adminUpdateScreenshotsV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateScreenshotsV2InternalServerError) ToJSONString() string {
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

func (o *AdminUpdateScreenshotsV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateScreenshotsV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
