// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package download_server_artifact

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/dsartifact-sdk/pkg/dsartifactclientmodels"
)

// CheckServerArtifactReader is a Reader for the CheckServerArtifact structure.
type CheckServerArtifactReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CheckServerArtifactReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewCheckServerArtifactOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCheckServerArtifactNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCheckServerArtifactInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dsartifact/namespaces/{namespace}/servers/{podName}/artifacts/exists returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCheckServerArtifactOK creates a CheckServerArtifactOK with default headers values
func NewCheckServerArtifactOK() *CheckServerArtifactOK {
	return &CheckServerArtifactOK{}
}

/*CheckServerArtifactOK handles this case with default header values.

  artifact exists.
*/
type CheckServerArtifactOK struct {
	Payload *dsartifactclientmodels.ModelsArtifactFileStatus
}

func (o *CheckServerArtifactOK) Error() string {
	return fmt.Sprintf("[GET /dsartifact/namespaces/{namespace}/servers/{podName}/artifacts/exists][%d] checkServerArtifactOK  %+v", 200, o.ToJSONString())
}

func (o *CheckServerArtifactOK) ToJSONString() string {
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

func (o *CheckServerArtifactOK) GetPayload() *dsartifactclientmodels.ModelsArtifactFileStatus {
	return o.Payload
}

func (o *CheckServerArtifactOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsartifactclientmodels.ModelsArtifactFileStatus)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCheckServerArtifactNotFound creates a CheckServerArtifactNotFound with default headers values
func NewCheckServerArtifactNotFound() *CheckServerArtifactNotFound {
	return &CheckServerArtifactNotFound{}
}

/*CheckServerArtifactNotFound handles this case with default header values.

  Not Found
*/
type CheckServerArtifactNotFound struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *CheckServerArtifactNotFound) Error() string {
	return fmt.Sprintf("[GET /dsartifact/namespaces/{namespace}/servers/{podName}/artifacts/exists][%d] checkServerArtifactNotFound  %+v", 404, o.ToJSONString())
}

func (o *CheckServerArtifactNotFound) ToJSONString() string {
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

func (o *CheckServerArtifactNotFound) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *CheckServerArtifactNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsartifactclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCheckServerArtifactInternalServerError creates a CheckServerArtifactInternalServerError with default headers values
func NewCheckServerArtifactInternalServerError() *CheckServerArtifactInternalServerError {
	return &CheckServerArtifactInternalServerError{}
}

/*CheckServerArtifactInternalServerError handles this case with default header values.

  Internal Server Error
*/
type CheckServerArtifactInternalServerError struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *CheckServerArtifactInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dsartifact/namespaces/{namespace}/servers/{podName}/artifacts/exists][%d] checkServerArtifactInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CheckServerArtifactInternalServerError) ToJSONString() string {
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

func (o *CheckServerArtifactInternalServerError) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *CheckServerArtifactInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsartifactclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
