// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package agreement

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

// RetrieveAgreementsPublicReader is a Reader for the RetrieveAgreementsPublic structure.
type RetrieveAgreementsPublicReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetrieveAgreementsPublicReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetrieveAgreementsPublicOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewRetrieveAgreementsPublicBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /agreement/public/agreements/policies returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetrieveAgreementsPublicOK creates a RetrieveAgreementsPublicOK with default headers values
func NewRetrieveAgreementsPublicOK() *RetrieveAgreementsPublicOK {
	return &RetrieveAgreementsPublicOK{}
}

/*RetrieveAgreementsPublicOK handles this case with default header values.

  successful operation
*/
type RetrieveAgreementsPublicOK struct {
	Payload []*legalclientmodels.RetrieveAcceptedAgreementResponse
}

func (o *RetrieveAgreementsPublicOK) Error() string {
	return fmt.Sprintf("[GET /agreement/public/agreements/policies][%d] retrieveAgreementsPublicOK  %+v", 200, o.ToJSONString())
}

func (o *RetrieveAgreementsPublicOK) ToJSONString() string {
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

func (o *RetrieveAgreementsPublicOK) GetPayload() []*legalclientmodels.RetrieveAcceptedAgreementResponse {
	return o.Payload
}

func (o *RetrieveAgreementsPublicOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetrieveAgreementsPublicBadRequest creates a RetrieveAgreementsPublicBadRequest with default headers values
func NewRetrieveAgreementsPublicBadRequest() *RetrieveAgreementsPublicBadRequest {
	return &RetrieveAgreementsPublicBadRequest{}
}

/*RetrieveAgreementsPublicBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>40045</td><td>errors.net.accelbyte.platform.legal.user_id_needed</td></tr></table>
*/
type RetrieveAgreementsPublicBadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *RetrieveAgreementsPublicBadRequest) Error() string {
	return fmt.Sprintf("[GET /agreement/public/agreements/policies][%d] retrieveAgreementsPublicBadRequest  %+v", 400, o.ToJSONString())
}

func (o *RetrieveAgreementsPublicBadRequest) ToJSONString() string {
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

func (o *RetrieveAgreementsPublicBadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RetrieveAgreementsPublicBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
