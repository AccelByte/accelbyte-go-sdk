// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_game_binary_record

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
)

// AdminPutGameBinaryRecorMetadataV1Reader is a Reader for the AdminPutGameBinaryRecorMetadataV1 structure.
type AdminPutGameBinaryRecorMetadataV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminPutGameBinaryRecorMetadataV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminPutGameBinaryRecorMetadataV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminPutGameBinaryRecorMetadataV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminPutGameBinaryRecorMetadataV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/metadata returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminPutGameBinaryRecorMetadataV1OK creates a AdminPutGameBinaryRecorMetadataV1OK with default headers values
func NewAdminPutGameBinaryRecorMetadataV1OK() *AdminPutGameBinaryRecorMetadataV1OK {
	return &AdminPutGameBinaryRecorMetadataV1OK{}
}

/*AdminPutGameBinaryRecorMetadataV1OK handles this case with default header values.

  Record saved
*/
type AdminPutGameBinaryRecorMetadataV1OK struct {
	Payload *cloudsaveclientmodels.ModelsGameBinaryRecordResponse
}

func (o *AdminPutGameBinaryRecorMetadataV1OK) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/metadata][%d] adminPutGameBinaryRecorMetadataV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminPutGameBinaryRecorMetadataV1OK) ToJSONString() string {
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

func (o *AdminPutGameBinaryRecorMetadataV1OK) GetPayload() *cloudsaveclientmodels.ModelsGameBinaryRecordResponse {
	return o.Payload
}

func (o *AdminPutGameBinaryRecorMetadataV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsGameBinaryRecordResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminPutGameBinaryRecorMetadataV1Unauthorized creates a AdminPutGameBinaryRecorMetadataV1Unauthorized with default headers values
func NewAdminPutGameBinaryRecorMetadataV1Unauthorized() *AdminPutGameBinaryRecorMetadataV1Unauthorized {
	return &AdminPutGameBinaryRecorMetadataV1Unauthorized{}
}

/*AdminPutGameBinaryRecorMetadataV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminPutGameBinaryRecorMetadataV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutGameBinaryRecorMetadataV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/metadata][%d] adminPutGameBinaryRecorMetadataV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminPutGameBinaryRecorMetadataV1Unauthorized) ToJSONString() string {
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

func (o *AdminPutGameBinaryRecorMetadataV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutGameBinaryRecorMetadataV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminPutGameBinaryRecorMetadataV1InternalServerError creates a AdminPutGameBinaryRecorMetadataV1InternalServerError with default headers values
func NewAdminPutGameBinaryRecorMetadataV1InternalServerError() *AdminPutGameBinaryRecorMetadataV1InternalServerError {
	return &AdminPutGameBinaryRecorMetadataV1InternalServerError{}
}

/*AdminPutGameBinaryRecorMetadataV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminPutGameBinaryRecorMetadataV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutGameBinaryRecorMetadataV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/metadata][%d] adminPutGameBinaryRecorMetadataV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminPutGameBinaryRecorMetadataV1InternalServerError) ToJSONString() string {
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

func (o *AdminPutGameBinaryRecorMetadataV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutGameBinaryRecorMetadataV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
