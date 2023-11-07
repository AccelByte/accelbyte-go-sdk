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

// AdminGetContentByUserIDV2Reader is a Reader for the AdminGetContentByUserIDV2 structure.
type AdminGetContentByUserIDV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetContentByUserIDV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetContentByUserIDV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetContentByUserIDV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetContentByUserIDV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetContentByUserIDV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v2/admin/namespaces/{namespace}/users/{userId}/contents returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetContentByUserIDV2OK creates a AdminGetContentByUserIDV2OK with default headers values
func NewAdminGetContentByUserIDV2OK() *AdminGetContentByUserIDV2OK {
	return &AdminGetContentByUserIDV2OK{}
}

/*AdminGetContentByUserIDV2OK handles this case with default header values.

  OK
*/
type AdminGetContentByUserIDV2OK struct {
	Payload *ugcclientmodels.ModelsPaginatedContentDownloadResponseV2
}

func (o *AdminGetContentByUserIDV2OK) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/users/{userId}/contents][%d] adminGetContentByUserIdV2OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetContentByUserIDV2OK) ToJSONString() string {
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

func (o *AdminGetContentByUserIDV2OK) GetPayload() *ugcclientmodels.ModelsPaginatedContentDownloadResponseV2 {
	return o.Payload
}

func (o *AdminGetContentByUserIDV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsPaginatedContentDownloadResponseV2)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetContentByUserIDV2Unauthorized creates a AdminGetContentByUserIDV2Unauthorized with default headers values
func NewAdminGetContentByUserIDV2Unauthorized() *AdminGetContentByUserIDV2Unauthorized {
	return &AdminGetContentByUserIDV2Unauthorized{}
}

/*AdminGetContentByUserIDV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetContentByUserIDV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetContentByUserIDV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/users/{userId}/contents][%d] adminGetContentByUserIdV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetContentByUserIDV2Unauthorized) ToJSONString() string {
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

func (o *AdminGetContentByUserIDV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetContentByUserIDV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetContentByUserIDV2NotFound creates a AdminGetContentByUserIDV2NotFound with default headers values
func NewAdminGetContentByUserIDV2NotFound() *AdminGetContentByUserIDV2NotFound {
	return &AdminGetContentByUserIDV2NotFound{}
}

/*AdminGetContentByUserIDV2NotFound handles this case with default header values.

  Not Found
*/
type AdminGetContentByUserIDV2NotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetContentByUserIDV2NotFound) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/users/{userId}/contents][%d] adminGetContentByUserIdV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetContentByUserIDV2NotFound) ToJSONString() string {
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

func (o *AdminGetContentByUserIDV2NotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetContentByUserIDV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetContentByUserIDV2InternalServerError creates a AdminGetContentByUserIDV2InternalServerError with default headers values
func NewAdminGetContentByUserIDV2InternalServerError() *AdminGetContentByUserIDV2InternalServerError {
	return &AdminGetContentByUserIDV2InternalServerError{}
}

/*AdminGetContentByUserIDV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetContentByUserIDV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetContentByUserIDV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/users/{userId}/contents][%d] adminGetContentByUserIdV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetContentByUserIDV2InternalServerError) ToJSONString() string {
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

func (o *AdminGetContentByUserIDV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetContentByUserIDV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
