// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package localized_policy_versions

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
)

// OldRequestPresignedURLReader is a Reader for the OldRequestPresignedURL structure.
type OldRequestPresignedURLReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *OldRequestPresignedURLReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewOldRequestPresignedURLCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewOldRequestPresignedURLBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /agreement/admin/localized-policy-versions/{localizedPolicyVersionId}/attachments returns an error %d: %s", response.Code(), string(data))
	}
}

// NewOldRequestPresignedURLCreated creates a OldRequestPresignedURLCreated with default headers values
func NewOldRequestPresignedURLCreated() *OldRequestPresignedURLCreated {
	return &OldRequestPresignedURLCreated{}
}

/*OldRequestPresignedURLCreated handles this case with default header values.

  successful operation
*/
type OldRequestPresignedURLCreated struct {
	Payload *legalclientmodels.UploadLocalizedPolicyVersionAttachmentResponse
}

func (o *OldRequestPresignedURLCreated) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/localized-policy-versions/{localizedPolicyVersionId}/attachments][%d] oldRequestPresignedUrlCreated  %+v", 201, o.ToJSONString())
}

func (o *OldRequestPresignedURLCreated) ToJSONString() string {
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

func (o *OldRequestPresignedURLCreated) GetPayload() *legalclientmodels.UploadLocalizedPolicyVersionAttachmentResponse {
	return o.Payload
}

func (o *OldRequestPresignedURLCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.UploadLocalizedPolicyVersionAttachmentResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewOldRequestPresignedURLBadRequest creates a OldRequestPresignedURLBadRequest with default headers values
func NewOldRequestPresignedURLBadRequest() *OldRequestPresignedURLBadRequest {
	return &OldRequestPresignedURLBadRequest{}
}

/*OldRequestPresignedURLBadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40034</td><td>errors.net.accelbyte.platform.legal.invalid_file_type</td></tr><tr><td>40037</td><td>errors.net.accelbyte.platform.legal.invalid_localized_policy_version</td></tr><tr><td>40042</td><td>errors.net.accelbyte.platform.legal.policy_version_freezed</td></tr></table>
*/
type OldRequestPresignedURLBadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *OldRequestPresignedURLBadRequest) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/localized-policy-versions/{localizedPolicyVersionId}/attachments][%d] oldRequestPresignedUrlBadRequest  %+v", 400, o.ToJSONString())
}

func (o *OldRequestPresignedURLBadRequest) ToJSONString() string {
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

func (o *OldRequestPresignedURLBadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *OldRequestPresignedURLBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
