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

// NewAdminPutPlayerBinaryRecordV1Params creates a new AdminPutPlayerBinaryRecordV1Params object
// with the default values initialized.
func NewAdminPutPlayerBinaryRecordV1Params() *AdminPutPlayerBinaryRecordV1Params {
	var ()
	return &AdminPutPlayerBinaryRecordV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminPutPlayerBinaryRecordV1ParamsWithTimeout creates a new AdminPutPlayerBinaryRecordV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminPutPlayerBinaryRecordV1ParamsWithTimeout(timeout time.Duration) *AdminPutPlayerBinaryRecordV1Params {
	var ()
	return &AdminPutPlayerBinaryRecordV1Params{

		timeout: timeout,
	}
}

// NewAdminPutPlayerBinaryRecordV1ParamsWithContext creates a new AdminPutPlayerBinaryRecordV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminPutPlayerBinaryRecordV1ParamsWithContext(ctx context.Context) *AdminPutPlayerBinaryRecordV1Params {
	var ()
	return &AdminPutPlayerBinaryRecordV1Params{

		Context: ctx,
	}
}

// NewAdminPutPlayerBinaryRecordV1ParamsWithHTTPClient creates a new AdminPutPlayerBinaryRecordV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminPutPlayerBinaryRecordV1ParamsWithHTTPClient(client *http.Client) *AdminPutPlayerBinaryRecordV1Params {
	var ()
	return &AdminPutPlayerBinaryRecordV1Params{
		HTTPClient: client,
	}
}

/*AdminPutPlayerBinaryRecordV1Params contains all the parameters to send to the API endpoint
for the admin put player binary record v1 operation typically these are written to a http.Request
*/
type AdminPutPlayerBinaryRecordV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *cloudsaveclientmodels.ModelsBinaryRecordRequest
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

// WithTimeout adds the timeout to the admin put player binary record v1 params
func (o *AdminPutPlayerBinaryRecordV1Params) WithTimeout(timeout time.Duration) *AdminPutPlayerBinaryRecordV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin put player binary record v1 params
func (o *AdminPutPlayerBinaryRecordV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin put player binary record v1 params
func (o *AdminPutPlayerBinaryRecordV1Params) WithContext(ctx context.Context) *AdminPutPlayerBinaryRecordV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin put player binary record v1 params
func (o *AdminPutPlayerBinaryRecordV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin put player binary record v1 params
func (o *AdminPutPlayerBinaryRecordV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin put player binary record v1 params
func (o *AdminPutPlayerBinaryRecordV1Params) WithHTTPClient(client *http.Client) *AdminPutPlayerBinaryRecordV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin put player binary record v1 params
func (o *AdminPutPlayerBinaryRecordV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin put player binary record v1 params
func (o *AdminPutPlayerBinaryRecordV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminPutPlayerBinaryRecordV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin put player binary record v1 params
func (o *AdminPutPlayerBinaryRecordV1Params) WithBody(body *cloudsaveclientmodels.ModelsBinaryRecordRequest) *AdminPutPlayerBinaryRecordV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin put player binary record v1 params
func (o *AdminPutPlayerBinaryRecordV1Params) SetBody(body *cloudsaveclientmodels.ModelsBinaryRecordRequest) {
	o.Body = body
}

// WithKey adds the key to the admin put player binary record v1 params
func (o *AdminPutPlayerBinaryRecordV1Params) WithKey(key string) *AdminPutPlayerBinaryRecordV1Params {
	o.SetKey(key)
	return o
}

// SetKey adds the key to the admin put player binary record v1 params
func (o *AdminPutPlayerBinaryRecordV1Params) SetKey(key string) {
	o.Key = key
}

// WithNamespace adds the namespace to the admin put player binary record v1 params
func (o *AdminPutPlayerBinaryRecordV1Params) WithNamespace(namespace string) *AdminPutPlayerBinaryRecordV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin put player binary record v1 params
func (o *AdminPutPlayerBinaryRecordV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin put player binary record v1 params
func (o *AdminPutPlayerBinaryRecordV1Params) WithUserID(userID string) *AdminPutPlayerBinaryRecordV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin put player binary record v1 params
func (o *AdminPutPlayerBinaryRecordV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminPutPlayerBinaryRecordV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
