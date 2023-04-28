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

// AdminDownloadContentPreviewReader is a Reader for the AdminDownloadContentPreview structure.
type AdminDownloadContentPreviewReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDownloadContentPreviewReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminDownloadContentPreviewOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDownloadContentPreviewUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDownloadContentPreviewNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDownloadContentPreviewInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/preview returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDownloadContentPreviewOK creates a AdminDownloadContentPreviewOK with default headers values
func NewAdminDownloadContentPreviewOK() *AdminDownloadContentPreviewOK {
	return &AdminDownloadContentPreviewOK{}
}

/*AdminDownloadContentPreviewOK handles this case with default header values.

  OK
*/
type AdminDownloadContentPreviewOK struct {
	Payload *ugcclientmodels.ModelsGetContentPreviewResponse
}

func (o *AdminDownloadContentPreviewOK) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/preview][%d] adminDownloadContentPreviewOK  %+v", 200, o.ToJSONString())
}

func (o *AdminDownloadContentPreviewOK) ToJSONString() string {
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

func (o *AdminDownloadContentPreviewOK) GetPayload() *ugcclientmodels.ModelsGetContentPreviewResponse {
	return o.Payload
}

func (o *AdminDownloadContentPreviewOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsGetContentPreviewResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDownloadContentPreviewUnauthorized creates a AdminDownloadContentPreviewUnauthorized with default headers values
func NewAdminDownloadContentPreviewUnauthorized() *AdminDownloadContentPreviewUnauthorized {
	return &AdminDownloadContentPreviewUnauthorized{}
}

/*AdminDownloadContentPreviewUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminDownloadContentPreviewUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDownloadContentPreviewUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/preview][%d] adminDownloadContentPreviewUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDownloadContentPreviewUnauthorized) ToJSONString() string {
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

func (o *AdminDownloadContentPreviewUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDownloadContentPreviewUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDownloadContentPreviewNotFound creates a AdminDownloadContentPreviewNotFound with default headers values
func NewAdminDownloadContentPreviewNotFound() *AdminDownloadContentPreviewNotFound {
	return &AdminDownloadContentPreviewNotFound{}
}

/*AdminDownloadContentPreviewNotFound handles this case with default header values.

  Not Found
*/
type AdminDownloadContentPreviewNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDownloadContentPreviewNotFound) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/preview][%d] adminDownloadContentPreviewNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDownloadContentPreviewNotFound) ToJSONString() string {
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

func (o *AdminDownloadContentPreviewNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDownloadContentPreviewNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDownloadContentPreviewInternalServerError creates a AdminDownloadContentPreviewInternalServerError with default headers values
func NewAdminDownloadContentPreviewInternalServerError() *AdminDownloadContentPreviewInternalServerError {
	return &AdminDownloadContentPreviewInternalServerError{}
}

/*AdminDownloadContentPreviewInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminDownloadContentPreviewInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDownloadContentPreviewInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/preview][%d] adminDownloadContentPreviewInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDownloadContentPreviewInternalServerError) ToJSONString() string {
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

func (o *AdminDownloadContentPreviewInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDownloadContentPreviewInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
