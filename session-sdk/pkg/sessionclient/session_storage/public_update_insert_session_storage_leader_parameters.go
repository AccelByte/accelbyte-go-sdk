// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package session_storage

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewPublicUpdateInsertSessionStorageLeaderParams creates a new PublicUpdateInsertSessionStorageLeaderParams object
// with the default values initialized.
func NewPublicUpdateInsertSessionStorageLeaderParams() *PublicUpdateInsertSessionStorageLeaderParams {
	var ()
	return &PublicUpdateInsertSessionStorageLeaderParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicUpdateInsertSessionStorageLeaderParamsWithTimeout creates a new PublicUpdateInsertSessionStorageLeaderParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicUpdateInsertSessionStorageLeaderParamsWithTimeout(timeout time.Duration) *PublicUpdateInsertSessionStorageLeaderParams {
	var ()
	return &PublicUpdateInsertSessionStorageLeaderParams{

		timeout: timeout,
	}
}

// NewPublicUpdateInsertSessionStorageLeaderParamsWithContext creates a new PublicUpdateInsertSessionStorageLeaderParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicUpdateInsertSessionStorageLeaderParamsWithContext(ctx context.Context) *PublicUpdateInsertSessionStorageLeaderParams {
	var ()
	return &PublicUpdateInsertSessionStorageLeaderParams{

		Context: ctx,
	}
}

// NewPublicUpdateInsertSessionStorageLeaderParamsWithHTTPClient creates a new PublicUpdateInsertSessionStorageLeaderParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicUpdateInsertSessionStorageLeaderParamsWithHTTPClient(client *http.Client) *PublicUpdateInsertSessionStorageLeaderParams {
	var ()
	return &PublicUpdateInsertSessionStorageLeaderParams{
		HTTPClient: client,
	}
}

/*PublicUpdateInsertSessionStorageLeaderParams contains all the parameters to send to the API endpoint
for the public update insert session storage leader operation typically these are written to a http.Request
*/
type PublicUpdateInsertSessionStorageLeaderParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body map[string]interface{}
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*SessionID
	  sessionID

	*/
	SessionID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public update insert session storage leader params
func (o *PublicUpdateInsertSessionStorageLeaderParams) WithTimeout(timeout time.Duration) *PublicUpdateInsertSessionStorageLeaderParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public update insert session storage leader params
func (o *PublicUpdateInsertSessionStorageLeaderParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public update insert session storage leader params
func (o *PublicUpdateInsertSessionStorageLeaderParams) WithContext(ctx context.Context) *PublicUpdateInsertSessionStorageLeaderParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public update insert session storage leader params
func (o *PublicUpdateInsertSessionStorageLeaderParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public update insert session storage leader params
func (o *PublicUpdateInsertSessionStorageLeaderParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public update insert session storage leader params
func (o *PublicUpdateInsertSessionStorageLeaderParams) WithHTTPClient(client *http.Client) *PublicUpdateInsertSessionStorageLeaderParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public update insert session storage leader params
func (o *PublicUpdateInsertSessionStorageLeaderParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public update insert session storage leader params
func (o *PublicUpdateInsertSessionStorageLeaderParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicUpdateInsertSessionStorageLeaderParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public update insert session storage leader params
func (o *PublicUpdateInsertSessionStorageLeaderParams) WithBody(body map[string]interface{}) *PublicUpdateInsertSessionStorageLeaderParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public update insert session storage leader params
func (o *PublicUpdateInsertSessionStorageLeaderParams) SetBody(body map[string]interface{}) {
	o.Body = body
}

// WithNamespace adds the namespace to the public update insert session storage leader params
func (o *PublicUpdateInsertSessionStorageLeaderParams) WithNamespace(namespace string) *PublicUpdateInsertSessionStorageLeaderParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public update insert session storage leader params
func (o *PublicUpdateInsertSessionStorageLeaderParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the public update insert session storage leader params
func (o *PublicUpdateInsertSessionStorageLeaderParams) WithSessionID(sessionID string) *PublicUpdateInsertSessionStorageLeaderParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the public update insert session storage leader params
func (o *PublicUpdateInsertSessionStorageLeaderParams) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicUpdateInsertSessionStorageLeaderParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param sessionId
	if err := r.SetPathParam("sessionId", o.SessionID); err != nil {
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
