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

// SingleAdminGetContentReader is a Reader for the SingleAdminGetContent structure.
type SingleAdminGetContentReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SingleAdminGetContentReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSingleAdminGetContentOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSingleAdminGetContentBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSingleAdminGetContentUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSingleAdminGetContentInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v1/admin/namespaces/{namespace}/contents returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSingleAdminGetContentOK creates a SingleAdminGetContentOK with default headers values
func NewSingleAdminGetContentOK() *SingleAdminGetContentOK {
	return &SingleAdminGetContentOK{}
}

/*SingleAdminGetContentOK handles this case with default header values.

  Get user's generated contents
*/
type SingleAdminGetContentOK struct {
	Payload *ugcclientmodels.ModelsPaginatedContentDownloadResponse
}

func (o *SingleAdminGetContentOK) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/contents][%d] singleAdminGetContentOK  %+v", 200, o.ToJSONString())
}

func (o *SingleAdminGetContentOK) ToJSONString() string {
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

func (o *SingleAdminGetContentOK) GetPayload() *ugcclientmodels.ModelsPaginatedContentDownloadResponse {
	return o.Payload
}

func (o *SingleAdminGetContentOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSingleAdminGetContentBadRequest creates a SingleAdminGetContentBadRequest with default headers values
func NewSingleAdminGetContentBadRequest() *SingleAdminGetContentBadRequest {
	return &SingleAdminGetContentBadRequest{}
}

/*SingleAdminGetContentBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770900</td><td>invalid paging parameter</td></tr></table>
*/
type SingleAdminGetContentBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminGetContentBadRequest) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/contents][%d] singleAdminGetContentBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SingleAdminGetContentBadRequest) ToJSONString() string {
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

func (o *SingleAdminGetContentBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminGetContentBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSingleAdminGetContentUnauthorized creates a SingleAdminGetContentUnauthorized with default headers values
func NewSingleAdminGetContentUnauthorized() *SingleAdminGetContentUnauthorized {
	return &SingleAdminGetContentUnauthorized{}
}

/*SingleAdminGetContentUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type SingleAdminGetContentUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminGetContentUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/contents][%d] singleAdminGetContentUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *SingleAdminGetContentUnauthorized) ToJSONString() string {
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

func (o *SingleAdminGetContentUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminGetContentUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSingleAdminGetContentInternalServerError creates a SingleAdminGetContentInternalServerError with default headers values
func NewSingleAdminGetContentInternalServerError() *SingleAdminGetContentInternalServerError {
	return &SingleAdminGetContentInternalServerError{}
}

/*SingleAdminGetContentInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770901</td><td>Unable to get ugc content: database error/Unable to get creator</td></tr><tr><td>770903</td><td>Failed generate download URL</td></tr></table>
*/
type SingleAdminGetContentInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminGetContentInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/contents][%d] singleAdminGetContentInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *SingleAdminGetContentInternalServerError) ToJSONString() string {
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

func (o *SingleAdminGetContentInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminGetContentInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
