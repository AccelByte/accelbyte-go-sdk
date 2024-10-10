// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_staging_content

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

// AdminListUserStagingContentsReader is a Reader for the AdminListUserStagingContents structure.
type AdminListUserStagingContentsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminListUserStagingContentsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminListUserStagingContentsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminListUserStagingContentsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminListUserStagingContentsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminListUserStagingContentsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminListUserStagingContentsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v2/admin/namespaces/{namespace}/users/{userId}/staging-contents returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminListUserStagingContentsOK creates a AdminListUserStagingContentsOK with default headers values
func NewAdminListUserStagingContentsOK() *AdminListUserStagingContentsOK {
	return &AdminListUserStagingContentsOK{}
}

/*AdminListUserStagingContentsOK handles this case with default header values.

  list user's staging content
*/
type AdminListUserStagingContentsOK struct {
	Payload *ugcclientmodels.ModelsPaginatedListStagingContentResponse
}

func (o *AdminListUserStagingContentsOK) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/users/{userId}/staging-contents][%d] adminListUserStagingContentsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminListUserStagingContentsOK) ToJSONString() string {
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

func (o *AdminListUserStagingContentsOK) GetPayload() *ugcclientmodels.ModelsPaginatedListStagingContentResponse {
	return o.Payload
}

func (o *AdminListUserStagingContentsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsPaginatedListStagingContentResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminListUserStagingContentsBadRequest creates a AdminListUserStagingContentsBadRequest with default headers values
func NewAdminListUserStagingContentsBadRequest() *AdminListUserStagingContentsBadRequest {
	return &AdminListUserStagingContentsBadRequest{}
}

/*AdminListUserStagingContentsBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>774301</td><td>invalid paging parameter</td></tr></table>
*/
type AdminListUserStagingContentsBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminListUserStagingContentsBadRequest) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/users/{userId}/staging-contents][%d] adminListUserStagingContentsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminListUserStagingContentsBadRequest) ToJSONString() string {
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

func (o *AdminListUserStagingContentsBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminListUserStagingContentsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListUserStagingContentsUnauthorized creates a AdminListUserStagingContentsUnauthorized with default headers values
func NewAdminListUserStagingContentsUnauthorized() *AdminListUserStagingContentsUnauthorized {
	return &AdminListUserStagingContentsUnauthorized{}
}

/*AdminListUserStagingContentsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminListUserStagingContentsUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminListUserStagingContentsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/users/{userId}/staging-contents][%d] adminListUserStagingContentsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminListUserStagingContentsUnauthorized) ToJSONString() string {
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

func (o *AdminListUserStagingContentsUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminListUserStagingContentsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListUserStagingContentsForbidden creates a AdminListUserStagingContentsForbidden with default headers values
func NewAdminListUserStagingContentsForbidden() *AdminListUserStagingContentsForbidden {
	return &AdminListUserStagingContentsForbidden{}
}

/*AdminListUserStagingContentsForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminListUserStagingContentsForbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminListUserStagingContentsForbidden) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/users/{userId}/staging-contents][%d] adminListUserStagingContentsForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminListUserStagingContentsForbidden) ToJSONString() string {
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

func (o *AdminListUserStagingContentsForbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminListUserStagingContentsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListUserStagingContentsInternalServerError creates a AdminListUserStagingContentsInternalServerError with default headers values
func NewAdminListUserStagingContentsInternalServerError() *AdminListUserStagingContentsInternalServerError {
	return &AdminListUserStagingContentsInternalServerError{}
}

/*AdminListUserStagingContentsInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>774302</td><td>unable to get staging content</td></tr><tr><td>774303</td><td>unable to generate presigned URL</td></tr></table>
*/
type AdminListUserStagingContentsInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminListUserStagingContentsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/users/{userId}/staging-contents][%d] adminListUserStagingContentsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminListUserStagingContentsInternalServerError) ToJSONString() string {
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

func (o *AdminListUserStagingContentsInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminListUserStagingContentsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
