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

// AdminBulkGetContentByIDsV2Reader is a Reader for the AdminBulkGetContentByIDsV2 structure.
type AdminBulkGetContentByIDsV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminBulkGetContentByIDsV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminBulkGetContentByIDsV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminBulkGetContentByIDsV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminBulkGetContentByIDsV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminBulkGetContentByIDsV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminBulkGetContentByIDsV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /ugc/v2/admin/namespaces/{namespace}/contents/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminBulkGetContentByIDsV2OK creates a AdminBulkGetContentByIDsV2OK with default headers values
func NewAdminBulkGetContentByIDsV2OK() *AdminBulkGetContentByIDsV2OK {
	return &AdminBulkGetContentByIDsV2OK{}
}

/*AdminBulkGetContentByIDsV2OK handles this case with default header values.

  Bulk get content by content IDs
*/
type AdminBulkGetContentByIDsV2OK struct {
	Payload []*ugcclientmodels.ModelsContentDownloadResponseV2
}

func (o *AdminBulkGetContentByIDsV2OK) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/admin/namespaces/{namespace}/contents/bulk][%d] adminBulkGetContentByIDsV2OK  %+v", 200, o.ToJSONString())
}

func (o *AdminBulkGetContentByIDsV2OK) ToJSONString() string {
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

func (o *AdminBulkGetContentByIDsV2OK) GetPayload() []*ugcclientmodels.ModelsContentDownloadResponseV2 {
	return o.Payload
}

func (o *AdminBulkGetContentByIDsV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminBulkGetContentByIDsV2BadRequest creates a AdminBulkGetContentByIDsV2BadRequest with default headers values
func NewAdminBulkGetContentByIDsV2BadRequest() *AdminBulkGetContentByIDsV2BadRequest {
	return &AdminBulkGetContentByIDsV2BadRequest{}
}

/*AdminBulkGetContentByIDsV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773900</td><td>Malformed request/Invalid request body</td></tr></table>
*/
type AdminBulkGetContentByIDsV2BadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminBulkGetContentByIDsV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/admin/namespaces/{namespace}/contents/bulk][%d] adminBulkGetContentByIDsV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminBulkGetContentByIDsV2BadRequest) ToJSONString() string {
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

func (o *AdminBulkGetContentByIDsV2BadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminBulkGetContentByIDsV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminBulkGetContentByIDsV2Unauthorized creates a AdminBulkGetContentByIDsV2Unauthorized with default headers values
func NewAdminBulkGetContentByIDsV2Unauthorized() *AdminBulkGetContentByIDsV2Unauthorized {
	return &AdminBulkGetContentByIDsV2Unauthorized{}
}

/*AdminBulkGetContentByIDsV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminBulkGetContentByIDsV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminBulkGetContentByIDsV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/admin/namespaces/{namespace}/contents/bulk][%d] adminBulkGetContentByIDsV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminBulkGetContentByIDsV2Unauthorized) ToJSONString() string {
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

func (o *AdminBulkGetContentByIDsV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminBulkGetContentByIDsV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminBulkGetContentByIDsV2Forbidden creates a AdminBulkGetContentByIDsV2Forbidden with default headers values
func NewAdminBulkGetContentByIDsV2Forbidden() *AdminBulkGetContentByIDsV2Forbidden {
	return &AdminBulkGetContentByIDsV2Forbidden{}
}

/*AdminBulkGetContentByIDsV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminBulkGetContentByIDsV2Forbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminBulkGetContentByIDsV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/admin/namespaces/{namespace}/contents/bulk][%d] adminBulkGetContentByIDsV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminBulkGetContentByIDsV2Forbidden) ToJSONString() string {
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

func (o *AdminBulkGetContentByIDsV2Forbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminBulkGetContentByIDsV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminBulkGetContentByIDsV2InternalServerError creates a AdminBulkGetContentByIDsV2InternalServerError with default headers values
func NewAdminBulkGetContentByIDsV2InternalServerError() *AdminBulkGetContentByIDsV2InternalServerError {
	return &AdminBulkGetContentByIDsV2InternalServerError{}
}

/*AdminBulkGetContentByIDsV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773901</td><td>Unable to get ugc content: database/Unable to get creator</td></tr><tr><td>770801</td><td>Unable to get ugc content: database/Unable to get creator</td></tr><tr><td>773902</td><td>Failed generate download URL</td></tr></table>
*/
type AdminBulkGetContentByIDsV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminBulkGetContentByIDsV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/admin/namespaces/{namespace}/contents/bulk][%d] adminBulkGetContentByIDsV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminBulkGetContentByIDsV2InternalServerError) ToJSONString() string {
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

func (o *AdminBulkGetContentByIDsV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminBulkGetContentByIDsV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
