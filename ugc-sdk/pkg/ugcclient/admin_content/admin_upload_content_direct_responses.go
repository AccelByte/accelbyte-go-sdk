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

// AdminUploadContentDirectReader is a Reader for the AdminUploadContentDirect structure.
type AdminUploadContentDirectReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUploadContentDirectReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminUploadContentDirectCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUploadContentDirectBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUploadContentDirectUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUploadContentDirectForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminUploadContentDirectConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUploadContentDirectInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUploadContentDirectCreated creates a AdminUploadContentDirectCreated with default headers values
func NewAdminUploadContentDirectCreated() *AdminUploadContentDirectCreated {
	return &AdminUploadContentDirectCreated{}
}

/*AdminUploadContentDirectCreated handles this case with default header values.

  Content uploaded
*/
type AdminUploadContentDirectCreated struct {
	Payload *ugcclientmodels.ModelsCreateContentResponse
}

func (o *AdminUploadContentDirectCreated) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents][%d] adminUploadContentDirectCreated  %+v", 201, o.ToJSONString())
}

func (o *AdminUploadContentDirectCreated) ToJSONString() string {
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

func (o *AdminUploadContentDirectCreated) GetPayload() *ugcclientmodels.ModelsCreateContentResponse {
	return o.Payload
}

func (o *AdminUploadContentDirectCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUploadContentDirectBadRequest creates a AdminUploadContentDirectBadRequest with default headers values
func NewAdminUploadContentDirectBadRequest() *AdminUploadContentDirectBadRequest {
	return &AdminUploadContentDirectBadRequest{}
}

/*AdminUploadContentDirectBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770100</td><td>Malformed request/Invalid request body/channel do not exist</td></tr></table>
*/
type AdminUploadContentDirectBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUploadContentDirectBadRequest) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents][%d] adminUploadContentDirectBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUploadContentDirectBadRequest) ToJSONString() string {
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

func (o *AdminUploadContentDirectBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUploadContentDirectBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUploadContentDirectUnauthorized creates a AdminUploadContentDirectUnauthorized with default headers values
func NewAdminUploadContentDirectUnauthorized() *AdminUploadContentDirectUnauthorized {
	return &AdminUploadContentDirectUnauthorized{}
}

/*AdminUploadContentDirectUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminUploadContentDirectUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUploadContentDirectUnauthorized) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents][%d] adminUploadContentDirectUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUploadContentDirectUnauthorized) ToJSONString() string {
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

func (o *AdminUploadContentDirectUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUploadContentDirectUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUploadContentDirectForbidden creates a AdminUploadContentDirectForbidden with default headers values
func NewAdminUploadContentDirectForbidden() *AdminUploadContentDirectForbidden {
	return &AdminUploadContentDirectForbidden{}
}

/*AdminUploadContentDirectForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770104</td><td>User has been banned to create content</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminUploadContentDirectForbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUploadContentDirectForbidden) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents][%d] adminUploadContentDirectForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUploadContentDirectForbidden) ToJSONString() string {
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

func (o *AdminUploadContentDirectForbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUploadContentDirectForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUploadContentDirectConflict creates a AdminUploadContentDirectConflict with default headers values
func NewAdminUploadContentDirectConflict() *AdminUploadContentDirectConflict {
	return &AdminUploadContentDirectConflict{}
}

/*AdminUploadContentDirectConflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770103</td><td>Unable to save ugc content: shareCode exceed the limit</td></tr></table>
*/
type AdminUploadContentDirectConflict struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUploadContentDirectConflict) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents][%d] adminUploadContentDirectConflict  %+v", 409, o.ToJSONString())
}

func (o *AdminUploadContentDirectConflict) ToJSONString() string {
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

func (o *AdminUploadContentDirectConflict) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUploadContentDirectConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUploadContentDirectInternalServerError creates a AdminUploadContentDirectInternalServerError with default headers values
func NewAdminUploadContentDirectInternalServerError() *AdminUploadContentDirectInternalServerError {
	return &AdminUploadContentDirectInternalServerError{}
}

/*AdminUploadContentDirectInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770102</td><td>Unable to check user ban status/Unable to save ugc content: unable to get channel</td></tr></table>
*/
type AdminUploadContentDirectInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUploadContentDirectInternalServerError) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents][%d] adminUploadContentDirectInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUploadContentDirectInternalServerError) ToJSONString() string {
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

func (o *AdminUploadContentDirectInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUploadContentDirectInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
