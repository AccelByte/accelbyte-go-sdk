// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_group

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

// SingleAdminGetGroupContentsReader is a Reader for the SingleAdminGetGroupContents structure.
type SingleAdminGetGroupContentsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SingleAdminGetGroupContentsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSingleAdminGetGroupContentsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSingleAdminGetGroupContentsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSingleAdminGetGroupContentsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSingleAdminGetGroupContentsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSingleAdminGetGroupContentsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v1/admin/namespaces/{namespace}/groups/{groupId}/contents returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSingleAdminGetGroupContentsOK creates a SingleAdminGetGroupContentsOK with default headers values
func NewSingleAdminGetGroupContentsOK() *SingleAdminGetGroupContentsOK {
	return &SingleAdminGetGroupContentsOK{}
}

/*SingleAdminGetGroupContentsOK handles this case with default header values.

  Get contents belong to a group
*/
type SingleAdminGetGroupContentsOK struct {
	Payload *ugcclientmodels.ModelsPaginatedContentDownloadResponse
}

func (o *SingleAdminGetGroupContentsOK) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/groups/{groupId}/contents][%d] singleAdminGetGroupContentsOK  %+v", 200, o.ToJSONString())
}

func (o *SingleAdminGetGroupContentsOK) ToJSONString() string {
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

func (o *SingleAdminGetGroupContentsOK) GetPayload() *ugcclientmodels.ModelsPaginatedContentDownloadResponse {
	return o.Payload
}

func (o *SingleAdminGetGroupContentsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsPaginatedContentDownloadResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSingleAdminGetGroupContentsBadRequest creates a SingleAdminGetGroupContentsBadRequest with default headers values
func NewSingleAdminGetGroupContentsBadRequest() *SingleAdminGetGroupContentsBadRequest {
	return &SingleAdminGetGroupContentsBadRequest{}
}

/*SingleAdminGetGroupContentsBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773101</td><td>invalid paging parameter</td></tr></table>
*/
type SingleAdminGetGroupContentsBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminGetGroupContentsBadRequest) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/groups/{groupId}/contents][%d] singleAdminGetGroupContentsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SingleAdminGetGroupContentsBadRequest) ToJSONString() string {
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

func (o *SingleAdminGetGroupContentsBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminGetGroupContentsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSingleAdminGetGroupContentsUnauthorized creates a SingleAdminGetGroupContentsUnauthorized with default headers values
func NewSingleAdminGetGroupContentsUnauthorized() *SingleAdminGetGroupContentsUnauthorized {
	return &SingleAdminGetGroupContentsUnauthorized{}
}

/*SingleAdminGetGroupContentsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type SingleAdminGetGroupContentsUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminGetGroupContentsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/groups/{groupId}/contents][%d] singleAdminGetGroupContentsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *SingleAdminGetGroupContentsUnauthorized) ToJSONString() string {
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

func (o *SingleAdminGetGroupContentsUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminGetGroupContentsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSingleAdminGetGroupContentsNotFound creates a SingleAdminGetGroupContentsNotFound with default headers values
func NewSingleAdminGetGroupContentsNotFound() *SingleAdminGetGroupContentsNotFound {
	return &SingleAdminGetGroupContentsNotFound{}
}

/*SingleAdminGetGroupContentsNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773103</td><td>No group content was found</td></tr></table>
*/
type SingleAdminGetGroupContentsNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminGetGroupContentsNotFound) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/groups/{groupId}/contents][%d] singleAdminGetGroupContentsNotFound  %+v", 404, o.ToJSONString())
}

func (o *SingleAdminGetGroupContentsNotFound) ToJSONString() string {
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

func (o *SingleAdminGetGroupContentsNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminGetGroupContentsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSingleAdminGetGroupContentsInternalServerError creates a SingleAdminGetGroupContentsInternalServerError with default headers values
func NewSingleAdminGetGroupContentsInternalServerError() *SingleAdminGetGroupContentsInternalServerError {
	return &SingleAdminGetGroupContentsInternalServerError{}
}

/*SingleAdminGetGroupContentsInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773102</td><td>Unable to get ugc content: database error</td></tr><tr><td>770901</td><td>Unable to get ugc content: database error/Unable to get creator</td></tr><tr><td>770903</td><td>Failed generate download URL</td></tr></table>
*/
type SingleAdminGetGroupContentsInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminGetGroupContentsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/groups/{groupId}/contents][%d] singleAdminGetGroupContentsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *SingleAdminGetGroupContentsInternalServerError) ToJSONString() string {
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

func (o *SingleAdminGetGroupContentsInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminGetGroupContentsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
