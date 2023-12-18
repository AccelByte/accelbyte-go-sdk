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

// AdminGetContentBulkByShareCodesReader is a Reader for the AdminGetContentBulkByShareCodes structure.
type AdminGetContentBulkByShareCodesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetContentBulkByShareCodesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetContentBulkByShareCodesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetContentBulkByShareCodesBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetContentBulkByShareCodesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetContentBulkByShareCodesForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetContentBulkByShareCodesInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /ugc/v1/admin/namespaces/{namespace}/contents/sharecodes/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetContentBulkByShareCodesOK creates a AdminGetContentBulkByShareCodesOK with default headers values
func NewAdminGetContentBulkByShareCodesOK() *AdminGetContentBulkByShareCodesOK {
	return &AdminGetContentBulkByShareCodesOK{}
}

/*AdminGetContentBulkByShareCodesOK handles this case with default header values.

  Bulk get content by content sharecodes
*/
type AdminGetContentBulkByShareCodesOK struct {
	Payload []*ugcclientmodels.ModelsContentDownloadResponse
}

func (o *AdminGetContentBulkByShareCodesOK) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/contents/sharecodes/bulk][%d] adminGetContentBulkByShareCodesOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetContentBulkByShareCodesOK) ToJSONString() string {
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

func (o *AdminGetContentBulkByShareCodesOK) GetPayload() []*ugcclientmodels.ModelsContentDownloadResponse {
	return o.Payload
}

func (o *AdminGetContentBulkByShareCodesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetContentBulkByShareCodesBadRequest creates a AdminGetContentBulkByShareCodesBadRequest with default headers values
func NewAdminGetContentBulkByShareCodesBadRequest() *AdminGetContentBulkByShareCodesBadRequest {
	return &AdminGetContentBulkByShareCodesBadRequest{}
}

/*AdminGetContentBulkByShareCodesBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773900</td><td>Malformed request/Invalid request body</td></tr></table>
*/
type AdminGetContentBulkByShareCodesBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetContentBulkByShareCodesBadRequest) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/contents/sharecodes/bulk][%d] adminGetContentBulkByShareCodesBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetContentBulkByShareCodesBadRequest) ToJSONString() string {
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

func (o *AdminGetContentBulkByShareCodesBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetContentBulkByShareCodesBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetContentBulkByShareCodesUnauthorized creates a AdminGetContentBulkByShareCodesUnauthorized with default headers values
func NewAdminGetContentBulkByShareCodesUnauthorized() *AdminGetContentBulkByShareCodesUnauthorized {
	return &AdminGetContentBulkByShareCodesUnauthorized{}
}

/*AdminGetContentBulkByShareCodesUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetContentBulkByShareCodesUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetContentBulkByShareCodesUnauthorized) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/contents/sharecodes/bulk][%d] adminGetContentBulkByShareCodesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetContentBulkByShareCodesUnauthorized) ToJSONString() string {
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

func (o *AdminGetContentBulkByShareCodesUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetContentBulkByShareCodesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetContentBulkByShareCodesForbidden creates a AdminGetContentBulkByShareCodesForbidden with default headers values
func NewAdminGetContentBulkByShareCodesForbidden() *AdminGetContentBulkByShareCodesForbidden {
	return &AdminGetContentBulkByShareCodesForbidden{}
}

/*AdminGetContentBulkByShareCodesForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminGetContentBulkByShareCodesForbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetContentBulkByShareCodesForbidden) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/contents/sharecodes/bulk][%d] adminGetContentBulkByShareCodesForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetContentBulkByShareCodesForbidden) ToJSONString() string {
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

func (o *AdminGetContentBulkByShareCodesForbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetContentBulkByShareCodesForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetContentBulkByShareCodesInternalServerError creates a AdminGetContentBulkByShareCodesInternalServerError with default headers values
func NewAdminGetContentBulkByShareCodesInternalServerError() *AdminGetContentBulkByShareCodesInternalServerError {
	return &AdminGetContentBulkByShareCodesInternalServerError{}
}

/*AdminGetContentBulkByShareCodesInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773901</td><td>Unable to get ugc content: database/Unable to get creator</td></tr><tr><td>773902</td><td>Failed generate download URL</td></tr></table>
*/
type AdminGetContentBulkByShareCodesInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetContentBulkByShareCodesInternalServerError) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/contents/sharecodes/bulk][%d] adminGetContentBulkByShareCodesInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetContentBulkByShareCodesInternalServerError) ToJSONString() string {
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

func (o *AdminGetContentBulkByShareCodesInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetContentBulkByShareCodesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
