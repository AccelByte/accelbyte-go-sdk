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

// AdminListStagingContentsReader is a Reader for the AdminListStagingContents structure.
type AdminListStagingContentsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminListStagingContentsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminListStagingContentsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminListStagingContentsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminListStagingContentsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminListStagingContentsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminListStagingContentsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v2/admin/namespaces/{namespace}/staging-contents returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminListStagingContentsOK creates a AdminListStagingContentsOK with default headers values
func NewAdminListStagingContentsOK() *AdminListStagingContentsOK {
	return &AdminListStagingContentsOK{}
}

/*AdminListStagingContentsOK handles this case with default header values.

  list user's staging content
*/
type AdminListStagingContentsOK struct {
	Payload *ugcclientmodels.ModelsPaginatedListStagingContentResponse
}

func (o *AdminListStagingContentsOK) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/staging-contents][%d] adminListStagingContentsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminListStagingContentsOK) ToJSONString() string {
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

func (o *AdminListStagingContentsOK) GetPayload() *ugcclientmodels.ModelsPaginatedListStagingContentResponse {
	return o.Payload
}

func (o *AdminListStagingContentsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListStagingContentsBadRequest creates a AdminListStagingContentsBadRequest with default headers values
func NewAdminListStagingContentsBadRequest() *AdminListStagingContentsBadRequest {
	return &AdminListStagingContentsBadRequest{}
}

/*AdminListStagingContentsBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>774301</td><td>invalid paging parameter</td></tr></table>
*/
type AdminListStagingContentsBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminListStagingContentsBadRequest) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/staging-contents][%d] adminListStagingContentsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminListStagingContentsBadRequest) ToJSONString() string {
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

func (o *AdminListStagingContentsBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminListStagingContentsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListStagingContentsUnauthorized creates a AdminListStagingContentsUnauthorized with default headers values
func NewAdminListStagingContentsUnauthorized() *AdminListStagingContentsUnauthorized {
	return &AdminListStagingContentsUnauthorized{}
}

/*AdminListStagingContentsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminListStagingContentsUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminListStagingContentsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/staging-contents][%d] adminListStagingContentsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminListStagingContentsUnauthorized) ToJSONString() string {
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

func (o *AdminListStagingContentsUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminListStagingContentsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListStagingContentsForbidden creates a AdminListStagingContentsForbidden with default headers values
func NewAdminListStagingContentsForbidden() *AdminListStagingContentsForbidden {
	return &AdminListStagingContentsForbidden{}
}

/*AdminListStagingContentsForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminListStagingContentsForbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminListStagingContentsForbidden) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/staging-contents][%d] adminListStagingContentsForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminListStagingContentsForbidden) ToJSONString() string {
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

func (o *AdminListStagingContentsForbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminListStagingContentsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListStagingContentsInternalServerError creates a AdminListStagingContentsInternalServerError with default headers values
func NewAdminListStagingContentsInternalServerError() *AdminListStagingContentsInternalServerError {
	return &AdminListStagingContentsInternalServerError{}
}

/*AdminListStagingContentsInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>774302</td><td>unable to get staging content</td></tr><tr><td>774303</td><td>unable to generate presigned URL</td></tr></table>
*/
type AdminListStagingContentsInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminListStagingContentsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/staging-contents][%d] adminListStagingContentsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminListStagingContentsInternalServerError) ToJSONString() string {
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

func (o *AdminListStagingContentsInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminListStagingContentsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
