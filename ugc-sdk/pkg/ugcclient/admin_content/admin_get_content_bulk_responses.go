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

// AdminGetContentBulkReader is a Reader for the AdminGetContentBulk structure.
type AdminGetContentBulkReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetContentBulkReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetContentBulkOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetContentBulkUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetContentBulkForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetContentBulkInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /ugc/v1/admin/namespaces/{namespace}/contents/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetContentBulkOK creates a AdminGetContentBulkOK with default headers values
func NewAdminGetContentBulkOK() *AdminGetContentBulkOK {
	return &AdminGetContentBulkOK{}
}

/*AdminGetContentBulkOK handles this case with default header values.

  OK
*/
type AdminGetContentBulkOK struct {
	Payload []*ugcclientmodels.ModelsContentDownloadResponse
}

func (o *AdminGetContentBulkOK) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/contents/bulk][%d] adminGetContentBulkOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetContentBulkOK) ToJSONString() string {
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

func (o *AdminGetContentBulkOK) GetPayload() []*ugcclientmodels.ModelsContentDownloadResponse {
	return o.Payload
}

func (o *AdminGetContentBulkOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetContentBulkUnauthorized creates a AdminGetContentBulkUnauthorized with default headers values
func NewAdminGetContentBulkUnauthorized() *AdminGetContentBulkUnauthorized {
	return &AdminGetContentBulkUnauthorized{}
}

/*AdminGetContentBulkUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetContentBulkUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetContentBulkUnauthorized) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/contents/bulk][%d] adminGetContentBulkUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetContentBulkUnauthorized) ToJSONString() string {
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

func (o *AdminGetContentBulkUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetContentBulkUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetContentBulkForbidden creates a AdminGetContentBulkForbidden with default headers values
func NewAdminGetContentBulkForbidden() *AdminGetContentBulkForbidden {
	return &AdminGetContentBulkForbidden{}
}

/*AdminGetContentBulkForbidden handles this case with default header values.

  Forbidden
*/
type AdminGetContentBulkForbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetContentBulkForbidden) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/contents/bulk][%d] adminGetContentBulkForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetContentBulkForbidden) ToJSONString() string {
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

func (o *AdminGetContentBulkForbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetContentBulkForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetContentBulkInternalServerError creates a AdminGetContentBulkInternalServerError with default headers values
func NewAdminGetContentBulkInternalServerError() *AdminGetContentBulkInternalServerError {
	return &AdminGetContentBulkInternalServerError{}
}

/*AdminGetContentBulkInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetContentBulkInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetContentBulkInternalServerError) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/contents/bulk][%d] adminGetContentBulkInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetContentBulkInternalServerError) ToJSONString() string {
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

func (o *AdminGetContentBulkInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetContentBulkInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
