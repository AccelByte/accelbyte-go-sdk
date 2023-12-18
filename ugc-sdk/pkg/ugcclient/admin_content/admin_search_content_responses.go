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

// AdminSearchContentReader is a Reader for the AdminSearchContent structure.
type AdminSearchContentReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminSearchContentReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminSearchContentOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminSearchContentBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminSearchContentUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminSearchContentInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v1/admin/namespaces/{namespace}/contents/search returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminSearchContentOK creates a AdminSearchContentOK with default headers values
func NewAdminSearchContentOK() *AdminSearchContentOK {
	return &AdminSearchContentOK{}
}

/*AdminSearchContentOK handles this case with default header values.

  Search contents
*/
type AdminSearchContentOK struct {
	Payload *ugcclientmodels.ModelsPaginatedContentDownloadResponse
}

func (o *AdminSearchContentOK) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/contents/search][%d] adminSearchContentOK  %+v", 200, o.ToJSONString())
}

func (o *AdminSearchContentOK) ToJSONString() string {
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

func (o *AdminSearchContentOK) GetPayload() *ugcclientmodels.ModelsPaginatedContentDownloadResponse {
	return o.Payload
}

func (o *AdminSearchContentOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminSearchContentBadRequest creates a AdminSearchContentBadRequest with default headers values
func NewAdminSearchContentBadRequest() *AdminSearchContentBadRequest {
	return &AdminSearchContentBadRequest{}
}

/*AdminSearchContentBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770800</td><td>invalid paging parameter/max allowed number of tags is {maxTags}/invalid official parameter/invalid ishidden parameter</td></tr></table>
*/
type AdminSearchContentBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminSearchContentBadRequest) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/contents/search][%d] adminSearchContentBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminSearchContentBadRequest) ToJSONString() string {
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

func (o *AdminSearchContentBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminSearchContentBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminSearchContentUnauthorized creates a AdminSearchContentUnauthorized with default headers values
func NewAdminSearchContentUnauthorized() *AdminSearchContentUnauthorized {
	return &AdminSearchContentUnauthorized{}
}

/*AdminSearchContentUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminSearchContentUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminSearchContentUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/contents/search][%d] adminSearchContentUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminSearchContentUnauthorized) ToJSONString() string {
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

func (o *AdminSearchContentUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminSearchContentUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminSearchContentInternalServerError creates a AdminSearchContentInternalServerError with default headers values
func NewAdminSearchContentInternalServerError() *AdminSearchContentInternalServerError {
	return &AdminSearchContentInternalServerError{}
}

/*AdminSearchContentInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770801</td><td>Unable to get ugc content: database/Unable to get creator</td></tr><tr><td>770803</td><td>Failed generate download URL</td></tr></table>
*/
type AdminSearchContentInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminSearchContentInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/contents/search][%d] adminSearchContentInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminSearchContentInternalServerError) ToJSONString() string {
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

func (o *AdminSearchContentInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminSearchContentInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
