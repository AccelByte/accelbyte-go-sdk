// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_content_v2

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

// AdminGetContentBulkByShareCodesV2Reader is a Reader for the AdminGetContentBulkByShareCodesV2 structure.
type AdminGetContentBulkByShareCodesV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetContentBulkByShareCodesV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetContentBulkByShareCodesV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetContentBulkByShareCodesV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetContentBulkByShareCodesV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetContentBulkByShareCodesV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetContentBulkByShareCodesV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /ugc/v2/admin/namespaces/{namespace}/contents/sharecodes/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetContentBulkByShareCodesV2OK creates a AdminGetContentBulkByShareCodesV2OK with default headers values
func NewAdminGetContentBulkByShareCodesV2OK() *AdminGetContentBulkByShareCodesV2OK {
	return &AdminGetContentBulkByShareCodesV2OK{}
}

/*AdminGetContentBulkByShareCodesV2OK handles this case with default header values.

  OK
*/
type AdminGetContentBulkByShareCodesV2OK struct {
	Payload []*ugcclientmodels.ModelsContentDownloadResponseV2
}

func (o *AdminGetContentBulkByShareCodesV2OK) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/admin/namespaces/{namespace}/contents/sharecodes/bulk][%d] adminGetContentBulkByShareCodesV2OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetContentBulkByShareCodesV2OK) ToJSONString() string {
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

func (o *AdminGetContentBulkByShareCodesV2OK) GetPayload() []*ugcclientmodels.ModelsContentDownloadResponseV2 {
	return o.Payload
}

func (o *AdminGetContentBulkByShareCodesV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetContentBulkByShareCodesV2BadRequest creates a AdminGetContentBulkByShareCodesV2BadRequest with default headers values
func NewAdminGetContentBulkByShareCodesV2BadRequest() *AdminGetContentBulkByShareCodesV2BadRequest {
	return &AdminGetContentBulkByShareCodesV2BadRequest{}
}

/*AdminGetContentBulkByShareCodesV2BadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetContentBulkByShareCodesV2BadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetContentBulkByShareCodesV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/admin/namespaces/{namespace}/contents/sharecodes/bulk][%d] adminGetContentBulkByShareCodesV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetContentBulkByShareCodesV2BadRequest) ToJSONString() string {
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

func (o *AdminGetContentBulkByShareCodesV2BadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetContentBulkByShareCodesV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetContentBulkByShareCodesV2Unauthorized creates a AdminGetContentBulkByShareCodesV2Unauthorized with default headers values
func NewAdminGetContentBulkByShareCodesV2Unauthorized() *AdminGetContentBulkByShareCodesV2Unauthorized {
	return &AdminGetContentBulkByShareCodesV2Unauthorized{}
}

/*AdminGetContentBulkByShareCodesV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetContentBulkByShareCodesV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetContentBulkByShareCodesV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/admin/namespaces/{namespace}/contents/sharecodes/bulk][%d] adminGetContentBulkByShareCodesV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetContentBulkByShareCodesV2Unauthorized) ToJSONString() string {
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

func (o *AdminGetContentBulkByShareCodesV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetContentBulkByShareCodesV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetContentBulkByShareCodesV2Forbidden creates a AdminGetContentBulkByShareCodesV2Forbidden with default headers values
func NewAdminGetContentBulkByShareCodesV2Forbidden() *AdminGetContentBulkByShareCodesV2Forbidden {
	return &AdminGetContentBulkByShareCodesV2Forbidden{}
}

/*AdminGetContentBulkByShareCodesV2Forbidden handles this case with default header values.

  Forbidden
*/
type AdminGetContentBulkByShareCodesV2Forbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetContentBulkByShareCodesV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/admin/namespaces/{namespace}/contents/sharecodes/bulk][%d] adminGetContentBulkByShareCodesV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetContentBulkByShareCodesV2Forbidden) ToJSONString() string {
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

func (o *AdminGetContentBulkByShareCodesV2Forbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetContentBulkByShareCodesV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetContentBulkByShareCodesV2InternalServerError creates a AdminGetContentBulkByShareCodesV2InternalServerError with default headers values
func NewAdminGetContentBulkByShareCodesV2InternalServerError() *AdminGetContentBulkByShareCodesV2InternalServerError {
	return &AdminGetContentBulkByShareCodesV2InternalServerError{}
}

/*AdminGetContentBulkByShareCodesV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetContentBulkByShareCodesV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetContentBulkByShareCodesV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/admin/namespaces/{namespace}/contents/sharecodes/bulk][%d] adminGetContentBulkByShareCodesV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetContentBulkByShareCodesV2InternalServerError) ToJSONString() string {
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

func (o *AdminGetContentBulkByShareCodesV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetContentBulkByShareCodesV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
