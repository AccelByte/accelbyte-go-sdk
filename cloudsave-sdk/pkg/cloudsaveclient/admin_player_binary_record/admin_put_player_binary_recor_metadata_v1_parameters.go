// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_player_binary_record

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

// NewAdminPutPlayerBinaryRecorMetadataV1Params creates a new AdminPutPlayerBinaryRecorMetadataV1Params object
// with the default values initialized.
func NewAdminPutPlayerBinaryRecorMetadataV1Params() *AdminPutPlayerBinaryRecorMetadataV1Params {
	var ()
	return &AdminPutPlayerBinaryRecorMetadataV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminPutPlayerBinaryRecorMetadataV1ParamsWithTimeout creates a new AdminPutPlayerBinaryRecorMetadataV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminPutPlayerBinaryRecorMetadataV1ParamsWithTimeout(timeout time.Duration) *AdminPutPlayerBinaryRecorMetadataV1Params {
	var ()
	return &AdminPutPlayerBinaryRecorMetadataV1Params{

		timeout: timeout,
	}
}

// NewAdminPutPlayerBinaryRecorMetadataV1ParamsWithContext creates a new AdminPutPlayerBinaryRecorMetadataV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminPutPlayerBinaryRecorMetadataV1ParamsWithContext(ctx context.Context) *AdminPutPlayerBinaryRecorMetadataV1Params {
	var ()
	return &AdminPutPlayerBinaryRecorMetadataV1Params{

		Context: ctx,
	}
}

// NewAdminPutPlayerBinaryRecorMetadataV1ParamsWithHTTPClient creates a new AdminPutPlayerBinaryRecorMetadataV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminPutPlayerBinaryRecorMetadataV1ParamsWithHTTPClient(client *http.Client) *AdminPutPlayerBinaryRecorMetadataV1Params {
	var ()
	return &AdminPutPlayerBinaryRecorMetadataV1Params{
		HTTPClient: client,
	}
}

/*AdminPutPlayerBinaryRecorMetadataV1Params contains all the parameters to send to the API endpoint
for the admin put player binary recor metadata v1 operation typically these are written to a http.Request
*/
type AdminPutPlayerBinaryRecorMetadataV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *cloudsaveclientmodels.ModelsPlayerBinaryRecordMetadataRequest
	/*Key
	  key of record

	*/
	Key string
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  user ID who own the record, should follow UUID version 4 without hyphen format

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin put player binary recor metadata v1 params
func (o *AdminPutPlayerBinaryRecorMetadataV1Params) WithTimeout(timeout time.Duration) *AdminPutPlayerBinaryRecorMetadataV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin put player binary recor metadata v1 params
func (o *AdminPutPlayerBinaryRecorMetadataV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin put player binary recor metadata v1 params
func (o *AdminPutPlayerBinaryRecorMetadataV1Params) WithContext(ctx context.Context) *AdminPutPlayerBinaryRecorMetadataV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin put player binary recor metadata v1 params
func (o *AdminPutPlayerBinaryRecorMetadataV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin put player binary recor metadata v1 params
func (o *AdminPutPlayerBinaryRecorMetadataV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin put player binary recor metadata v1 params
func (o *AdminPutPlayerBinaryRecorMetadataV1Params) WithHTTPClient(client *http.Client) *AdminPutPlayerBinaryRecorMetadataV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin put player binary recor metadata v1 params
func (o *AdminPutPlayerBinaryRecorMetadataV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin put player binary recor metadata v1 params
func (o *AdminPutPlayerBinaryRecorMetadataV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminPutPlayerBinaryRecorMetadataV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin put player binary recor metadata v1 params
func (o *AdminPutPlayerBinaryRecorMetadataV1Params) WithBody(body *cloudsaveclientmodels.ModelsPlayerBinaryRecordMetadataRequest) *AdminPutPlayerBinaryRecorMetadataV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin put player binary recor metadata v1 params
func (o *AdminPutPlayerBinaryRecorMetadataV1Params) SetBody(body *cloudsaveclientmodels.ModelsPlayerBinaryRecordMetadataRequest) {
	o.Body = body
}

// WithKey adds the key to the admin put player binary recor metadata v1 params
func (o *AdminPutPlayerBinaryRecorMetadataV1Params) WithKey(key string) *AdminPutPlayerBinaryRecorMetadataV1Params {
	o.SetKey(key)
	return o
}

// SetKey adds the key to the admin put player binary recor metadata v1 params
func (o *AdminPutPlayerBinaryRecorMetadataV1Params) SetKey(key string) {
	o.Key = key
}

// WithNamespace adds the namespace to the admin put player binary recor metadata v1 params
func (o *AdminPutPlayerBinaryRecorMetadataV1Params) WithNamespace(namespace string) *AdminPutPlayerBinaryRecorMetadataV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin put player binary recor metadata v1 params
func (o *AdminPutPlayerBinaryRecorMetadataV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin put player binary recor metadata v1 params
func (o *AdminPutPlayerBinaryRecorMetadataV1Params) WithUserID(userID string) *AdminPutPlayerBinaryRecorMetadataV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin put player binary recor metadata v1 params
func (o *AdminPutPlayerBinaryRecorMetadataV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminPutPlayerBinaryRecorMetadataV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
