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

// DownloadServerArtifactsReader is a Reader for the DownloadServerArtifacts structure.
type DownloadServerArtifactsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DownloadServerArtifactsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDownloadServerArtifactsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDownloadServerArtifactsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDownloadServerArtifactsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dsartifact/namespaces/{namespace}/servers/{podName}/artifacts/download returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDownloadServerArtifactsOK creates a DownloadServerArtifactsOK with default headers values
func NewDownloadServerArtifactsOK() *DownloadServerArtifactsOK {
	return &DownloadServerArtifactsOK{}
}

/*DownloadServerArtifactsOK handles this case with default header values.

  server artifact downloaded.
*/
type DownloadServerArtifactsOK struct {
}

func (o *DownloadServerArtifactsOK) Error() string {
	return fmt.Sprintf("[GET /dsartifact/namespaces/{namespace}/servers/{podName}/artifacts/download][%d] downloadServerArtifactsOK ", 200)
}

func (o *DownloadServerArtifactsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDownloadServerArtifactsNotFound creates a DownloadServerArtifactsNotFound with default headers values
func NewDownloadServerArtifactsNotFound() *DownloadServerArtifactsNotFound {
	return &DownloadServerArtifactsNotFound{}
}

/*DownloadServerArtifactsNotFound handles this case with default header values.

  Not Found
*/
type DownloadServerArtifactsNotFound struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *DownloadServerArtifactsNotFound) Error() string {
	return fmt.Sprintf("[GET /dsartifact/namespaces/{namespace}/servers/{podName}/artifacts/download][%d] downloadServerArtifactsNotFound  %+v", 404, o.ToJSONString())
}

func (o *DownloadServerArtifactsNotFound) ToJSONString() string {
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

func (o *DownloadServerArtifactsNotFound) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *DownloadServerArtifactsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDownloadServerArtifactsInternalServerError creates a DownloadServerArtifactsInternalServerError with default headers values
func NewDownloadServerArtifactsInternalServerError() *DownloadServerArtifactsInternalServerError {
	return &DownloadServerArtifactsInternalServerError{}
}

/*DownloadServerArtifactsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type DownloadServerArtifactsInternalServerError struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *DownloadServerArtifactsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dsartifact/namespaces/{namespace}/servers/{podName}/artifacts/download][%d] downloadServerArtifactsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DownloadServerArtifactsInternalServerError) ToJSONString() string {
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

func (o *DownloadServerArtifactsInternalServerError) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *DownloadServerArtifactsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
