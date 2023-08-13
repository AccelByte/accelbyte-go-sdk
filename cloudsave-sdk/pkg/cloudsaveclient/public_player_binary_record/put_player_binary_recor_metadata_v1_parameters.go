// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_player_binary_record

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
)

// NewPutPlayerBinaryRecorMetadataV1Params creates a new PutPlayerBinaryRecorMetadataV1Params object
// with the default values initialized.
func NewPutPlayerBinaryRecorMetadataV1Params() *PutPlayerBinaryRecorMetadataV1Params {
	var ()
	return &PutPlayerBinaryRecorMetadataV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPutPlayerBinaryRecorMetadataV1ParamsWithTimeout creates a new PutPlayerBinaryRecorMetadataV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPutPlayerBinaryRecorMetadataV1ParamsWithTimeout(timeout time.Duration) *PutPlayerBinaryRecorMetadataV1Params {
	var ()
	return &PutPlayerBinaryRecorMetadataV1Params{

		timeout: timeout,
	}
}

// NewPutPlayerBinaryRecorMetadataV1ParamsWithContext creates a new PutPlayerBinaryRecorMetadataV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewPutPlayerBinaryRecorMetadataV1ParamsWithContext(ctx context.Context) *PutPlayerBinaryRecorMetadataV1Params {
	var ()
	return &PutPlayerBinaryRecorMetadataV1Params{

		Context: ctx,
	}
}

// NewPutPlayerBinaryRecorMetadataV1ParamsWithHTTPClient creates a new PutPlayerBinaryRecorMetadataV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPutPlayerBinaryRecorMetadataV1ParamsWithHTTPClient(client *http.Client) *PutPlayerBinaryRecorMetadataV1Params {
	var ()
	return &PutPlayerBinaryRecorMetadataV1Params{
		HTTPClient: client,
	}
}

/*PutPlayerBinaryRecorMetadataV1Params contains all the parameters to send to the API endpoint
for the put player binary recor metadata v1 operation typically these are written to a http.Request
*/
type PutPlayerBinaryRecorMetadataV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *cloudsaveclientmodels.ModelsPlayerBinaryRecordMetadataPublicRequest
	/*Key
	  key of record

	*/
	Key string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user ID who own the record

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the put player binary recor metadata v1 params
func (o *PutPlayerBinaryRecorMetadataV1Params) WithTimeout(timeout time.Duration) *PutPlayerBinaryRecorMetadataV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the put player binary recor metadata v1 params
func (o *PutPlayerBinaryRecorMetadataV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the put player binary recor metadata v1 params
func (o *PutPlayerBinaryRecorMetadataV1Params) WithContext(ctx context.Context) *PutPlayerBinaryRecorMetadataV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the put player binary recor metadata v1 params
func (o *PutPlayerBinaryRecorMetadataV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the put player binary recor metadata v1 params
func (o *PutPlayerBinaryRecorMetadataV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the put player binary recor metadata v1 params
func (o *PutPlayerBinaryRecorMetadataV1Params) WithHTTPClient(client *http.Client) *PutPlayerBinaryRecorMetadataV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the put player binary recor metadata v1 params
func (o *PutPlayerBinaryRecorMetadataV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the put player binary recor metadata v1 params
func (o *PutPlayerBinaryRecorMetadataV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the put player binary recor metadata v1 params
func (o *PutPlayerBinaryRecorMetadataV1Params) WithBody(body *cloudsaveclientmodels.ModelsPlayerBinaryRecordMetadataPublicRequest) *PutPlayerBinaryRecorMetadataV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the put player binary recor metadata v1 params
func (o *PutPlayerBinaryRecorMetadataV1Params) SetBody(body *cloudsaveclientmodels.ModelsPlayerBinaryRecordMetadataPublicRequest) {
	o.Body = body
}

// WithKey adds the key to the put player binary recor metadata v1 params
func (o *PutPlayerBinaryRecorMetadataV1Params) WithKey(key string) *PutPlayerBinaryRecorMetadataV1Params {
	o.SetKey(key)
	return o
}

// SetKey adds the key to the put player binary recor metadata v1 params
func (o *PutPlayerBinaryRecorMetadataV1Params) SetKey(key string) {
	o.Key = key
}

// WithNamespace adds the namespace to the put player binary recor metadata v1 params
func (o *PutPlayerBinaryRecorMetadataV1Params) WithNamespace(namespace string) *PutPlayerBinaryRecorMetadataV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the put player binary recor metadata v1 params
func (o *PutPlayerBinaryRecorMetadataV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the put player binary recor metadata v1 params
func (o *PutPlayerBinaryRecorMetadataV1Params) WithUserID(userID string) *PutPlayerBinaryRecorMetadataV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the put player binary recor metadata v1 params
func (o *PutPlayerBinaryRecorMetadataV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PutPlayerBinaryRecorMetadataV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param key
	if err := r.SetPathParam("key", o.Key); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
