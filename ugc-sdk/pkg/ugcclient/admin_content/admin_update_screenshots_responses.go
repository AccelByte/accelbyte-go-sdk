// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_content

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

// AdminUpdateScreenshotsReader is a Reader for the AdminUpdateScreenshots structure.
type AdminUpdateScreenshotsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateScreenshotsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateScreenshotsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateScreenshotsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateScreenshotsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateScreenshotsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateScreenshotsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateScreenshotsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateScreenshotsOK creates a AdminUpdateScreenshotsOK with default headers values
func NewAdminUpdateScreenshotsOK() *AdminUpdateScreenshotsOK {
	return &AdminUpdateScreenshotsOK{}
}

/*AdminUpdateScreenshotsOK handles this case with default header values.

  Screenshot updated
*/
type AdminUpdateScreenshotsOK struct {
	Payload *ugcclientmodels.ModelsUpdateScreenshotResponse
}

func (o *AdminUpdateScreenshotsOK) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots][%d] adminUpdateScreenshotsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateScreenshotsOK) ToJSONString() string {
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

func (o *AdminUpdateScreenshotsOK) GetPayload() *ugcclientmodels.ModelsUpdateScreenshotResponse {
	return o.Payload
}

func (o *AdminUpdateScreenshotsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateScreenshotsBadRequest creates a AdminUpdateScreenshotsBadRequest with default headers values
func NewAdminUpdateScreenshotsBadRequest() *AdminUpdateScreenshotsBadRequest {
	return &AdminUpdateScreenshotsBadRequest{}
}

/*AdminUpdateScreenshotsBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772601</td><td>Malformed request</td></tr></table>
*/
type AdminUpdateScreenshotsBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateScreenshotsBadRequest) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots][%d] adminUpdateScreenshotsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateScreenshotsBadRequest) ToJSONString() string {
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

func (o *AdminUpdateScreenshotsBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateScreenshotsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateScreenshotsUnauthorized creates a AdminUpdateScreenshotsUnauthorized with default headers values
func NewAdminUpdateScreenshotsUnauthorized() *AdminUpdateScreenshotsUnauthorized {
	return &AdminUpdateScreenshotsUnauthorized{}
}

/*AdminUpdateScreenshotsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminUpdateScreenshotsUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateScreenshotsUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots][%d] adminUpdateScreenshotsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateScreenshotsUnauthorized) ToJSONString() string {
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

func (o *AdminUpdateScreenshotsUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateScreenshotsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateScreenshotsForbidden creates a AdminUpdateScreenshotsForbidden with default headers values
func NewAdminUpdateScreenshotsForbidden() *AdminUpdateScreenshotsForbidden {
	return &AdminUpdateScreenshotsForbidden{}
}

/*AdminUpdateScreenshotsForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772604</td><td>User has been banned to update content</td></tr></table>
*/
type AdminUpdateScreenshotsForbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateScreenshotsForbidden) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots][%d] adminUpdateScreenshotsForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateScreenshotsForbidden) ToJSONString() string {
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

func (o *AdminUpdateScreenshotsForbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateScreenshotsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateScreenshotsNotFound creates a AdminUpdateScreenshotsNotFound with default headers values
func NewAdminUpdateScreenshotsNotFound() *AdminUpdateScreenshotsNotFound {
	return &AdminUpdateScreenshotsNotFound{}
}

/*AdminUpdateScreenshotsNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772603</td><td>Content not found</td></tr></table>
*/
type AdminUpdateScreenshotsNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateScreenshotsNotFound) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots][%d] adminUpdateScreenshotsNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateScreenshotsNotFound) ToJSONString() string {
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

func (o *AdminUpdateScreenshotsNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateScreenshotsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateScreenshotsInternalServerError creates a AdminUpdateScreenshotsInternalServerError with default headers values
func NewAdminUpdateScreenshotsInternalServerError() *AdminUpdateScreenshotsInternalServerError {
	return &AdminUpdateScreenshotsInternalServerError{}
}

/*AdminUpdateScreenshotsInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772602</td><td>Unable to check user ban status/Unable to get updated ugc content</td></tr></table>
*/
type AdminUpdateScreenshotsInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateScreenshotsInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots][%d] adminUpdateScreenshotsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateScreenshotsInternalServerError) ToJSONString() string {
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

func (o *AdminUpdateScreenshotsInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateScreenshotsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
