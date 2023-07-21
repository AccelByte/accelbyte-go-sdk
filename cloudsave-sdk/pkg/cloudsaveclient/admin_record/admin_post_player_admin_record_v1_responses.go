// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_record

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

// AdminPostPlayerAdminRecordV1Reader is a Reader for the AdminPostPlayerAdminRecordV1 structure.
type AdminPostPlayerAdminRecordV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminPostPlayerAdminRecordV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminPostPlayerAdminRecordV1Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminPostPlayerAdminRecordV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminPostPlayerAdminRecordV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminPostPlayerAdminRecordV1Created creates a AdminPostPlayerAdminRecordV1Created with default headers values
func NewAdminPostPlayerAdminRecordV1Created() *AdminPostPlayerAdminRecordV1Created {
	return &AdminPostPlayerAdminRecordV1Created{}
}

/*AdminPostPlayerAdminRecordV1Created handles this case with default header values.

  Record in user-level saved
*/
type AdminPostPlayerAdminRecordV1Created struct {
	Payload *cloudsaveclientmodels.ModelsAdminPlayerRecordResponse
}

func (o *AdminPostPlayerAdminRecordV1Created) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}][%d] adminPostPlayerAdminRecordV1Created  %+v", 201, o.ToJSONString())
}

func (o *AdminPostPlayerAdminRecordV1Created) ToJSONString() string {
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

func (o *AdminPostPlayerAdminRecordV1Created) GetPayload() *cloudsaveclientmodels.ModelsAdminPlayerRecordResponse {
	return o.Payload
}

func (o *AdminPostPlayerAdminRecordV1Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsAdminPlayerRecordResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminPostPlayerAdminRecordV1Unauthorized creates a AdminPostPlayerAdminRecordV1Unauthorized with default headers values
func NewAdminPostPlayerAdminRecordV1Unauthorized() *AdminPostPlayerAdminRecordV1Unauthorized {
	return &AdminPostPlayerAdminRecordV1Unauthorized{}
}

/*AdminPostPlayerAdminRecordV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminPostPlayerAdminRecordV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostPlayerAdminRecordV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}][%d] adminPostPlayerAdminRecordV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminPostPlayerAdminRecordV1Unauthorized) ToJSONString() string {
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

func (o *AdminPostPlayerAdminRecordV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostPlayerAdminRecordV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPostPlayerAdminRecordV1InternalServerError creates a AdminPostPlayerAdminRecordV1InternalServerError with default headers values
func NewAdminPostPlayerAdminRecordV1InternalServerError() *AdminPostPlayerAdminRecordV1InternalServerError {
	return &AdminPostPlayerAdminRecordV1InternalServerError{}
}

/*AdminPostPlayerAdminRecordV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminPostPlayerAdminRecordV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostPlayerAdminRecordV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}][%d] adminPostPlayerAdminRecordV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminPostPlayerAdminRecordV1InternalServerError) ToJSONString() string {
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

func (o *AdminPostPlayerAdminRecordV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostPlayerAdminRecordV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
