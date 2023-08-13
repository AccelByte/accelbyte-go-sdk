// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_player_binary_record

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

// AdminListPlayerBinaryRecordsV1Reader is a Reader for the AdminListPlayerBinaryRecordsV1 structure.
type AdminListPlayerBinaryRecordsV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminListPlayerBinaryRecordsV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminListPlayerBinaryRecordsV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminListPlayerBinaryRecordsV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminListPlayerBinaryRecordsV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminListPlayerBinaryRecordsV1OK creates a AdminListPlayerBinaryRecordsV1OK with default headers values
func NewAdminListPlayerBinaryRecordsV1OK() *AdminListPlayerBinaryRecordsV1OK {
	return &AdminListPlayerBinaryRecordsV1OK{}
}

/*AdminListPlayerBinaryRecordsV1OK handles this case with default header values.

  Retrieve list of player records by namespace
*/
type AdminListPlayerBinaryRecordsV1OK struct {
	Payload *cloudsaveclientmodels.ModelsListPlayerBinaryRecordsResponse
}

func (o *AdminListPlayerBinaryRecordsV1OK) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries][%d] adminListPlayerBinaryRecordsV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminListPlayerBinaryRecordsV1OK) ToJSONString() string {
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

func (o *AdminListPlayerBinaryRecordsV1OK) GetPayload() *cloudsaveclientmodels.ModelsListPlayerBinaryRecordsResponse {
	return o.Payload
}

func (o *AdminListPlayerBinaryRecordsV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsListPlayerBinaryRecordsResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminListPlayerBinaryRecordsV1Unauthorized creates a AdminListPlayerBinaryRecordsV1Unauthorized with default headers values
func NewAdminListPlayerBinaryRecordsV1Unauthorized() *AdminListPlayerBinaryRecordsV1Unauthorized {
	return &AdminListPlayerBinaryRecordsV1Unauthorized{}
}

/*AdminListPlayerBinaryRecordsV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminListPlayerBinaryRecordsV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminListPlayerBinaryRecordsV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries][%d] adminListPlayerBinaryRecordsV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminListPlayerBinaryRecordsV1Unauthorized) ToJSONString() string {
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

func (o *AdminListPlayerBinaryRecordsV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminListPlayerBinaryRecordsV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminListPlayerBinaryRecordsV1InternalServerError creates a AdminListPlayerBinaryRecordsV1InternalServerError with default headers values
func NewAdminListPlayerBinaryRecordsV1InternalServerError() *AdminListPlayerBinaryRecordsV1InternalServerError {
	return &AdminListPlayerBinaryRecordsV1InternalServerError{}
}

/*AdminListPlayerBinaryRecordsV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminListPlayerBinaryRecordsV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminListPlayerBinaryRecordsV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries][%d] adminListPlayerBinaryRecordsV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminListPlayerBinaryRecordsV1InternalServerError) ToJSONString() string {
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

func (o *AdminListPlayerBinaryRecordsV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminListPlayerBinaryRecordsV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
