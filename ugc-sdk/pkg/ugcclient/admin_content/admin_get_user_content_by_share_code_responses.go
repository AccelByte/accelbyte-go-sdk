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

// AdminGetUserContentByShareCodeReader is a Reader for the AdminGetUserContentByShareCode structure.
type AdminGetUserContentByShareCodeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetUserContentByShareCodeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetUserContentByShareCodeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetUserContentByShareCodeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetUserContentByShareCodeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetUserContentByShareCodeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v1/admin/namespaces/{namespace}/contents/sharecodes/{shareCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetUserContentByShareCodeOK creates a AdminGetUserContentByShareCodeOK with default headers values
func NewAdminGetUserContentByShareCodeOK() *AdminGetUserContentByShareCodeOK {
	return &AdminGetUserContentByShareCodeOK{}
}

/*AdminGetUserContentByShareCodeOK handles this case with default header values.

  OK
*/
type AdminGetUserContentByShareCodeOK struct {
	Payload *ugcclientmodels.ModelsContentDownloadResponse
}

func (o *AdminGetUserContentByShareCodeOK) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/contents/sharecodes/{shareCode}][%d] adminGetUserContentByShareCodeOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetUserContentByShareCodeOK) ToJSONString() string {
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

func (o *AdminGetUserContentByShareCodeOK) GetPayload() *ugcclientmodels.ModelsContentDownloadResponse {
	return o.Payload
}

func (o *AdminGetUserContentByShareCodeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsContentDownloadResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetUserContentByShareCodeUnauthorized creates a AdminGetUserContentByShareCodeUnauthorized with default headers values
func NewAdminGetUserContentByShareCodeUnauthorized() *AdminGetUserContentByShareCodeUnauthorized {
	return &AdminGetUserContentByShareCodeUnauthorized{}
}

/*AdminGetUserContentByShareCodeUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetUserContentByShareCodeUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetUserContentByShareCodeUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/contents/sharecodes/{shareCode}][%d] adminGetUserContentByShareCodeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetUserContentByShareCodeUnauthorized) ToJSONString() string {
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

func (o *AdminGetUserContentByShareCodeUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetUserContentByShareCodeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetUserContentByShareCodeNotFound creates a AdminGetUserContentByShareCodeNotFound with default headers values
func NewAdminGetUserContentByShareCodeNotFound() *AdminGetUserContentByShareCodeNotFound {
	return &AdminGetUserContentByShareCodeNotFound{}
}

/*AdminGetUserContentByShareCodeNotFound handles this case with default header values.

  Not Found
*/
type AdminGetUserContentByShareCodeNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetUserContentByShareCodeNotFound) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/contents/sharecodes/{shareCode}][%d] adminGetUserContentByShareCodeNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetUserContentByShareCodeNotFound) ToJSONString() string {
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

func (o *AdminGetUserContentByShareCodeNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetUserContentByShareCodeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetUserContentByShareCodeInternalServerError creates a AdminGetUserContentByShareCodeInternalServerError with default headers values
func NewAdminGetUserContentByShareCodeInternalServerError() *AdminGetUserContentByShareCodeInternalServerError {
	return &AdminGetUserContentByShareCodeInternalServerError{}
}

/*AdminGetUserContentByShareCodeInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetUserContentByShareCodeInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetUserContentByShareCodeInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/contents/sharecodes/{shareCode}][%d] adminGetUserContentByShareCodeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetUserContentByShareCodeInternalServerError) ToJSONString() string {
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

func (o *AdminGetUserContentByShareCodeInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetUserContentByShareCodeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
