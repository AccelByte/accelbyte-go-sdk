// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_info

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

// NewSyncUserInfoParams creates a new SyncUserInfoParams object
// with the default values initialized.
func NewSyncUserInfoParams() *SyncUserInfoParams {
	var ()
	return &SyncUserInfoParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSyncUserInfoParamsWithTimeout creates a new SyncUserInfoParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSyncUserInfoParamsWithTimeout(timeout time.Duration) *SyncUserInfoParams {
	var ()
	return &SyncUserInfoParams{

		timeout: timeout,
	}
}

// NewSyncUserInfoParamsWithContext creates a new SyncUserInfoParams object
// with the default values initialized, and the ability to set a context for a request
func NewSyncUserInfoParamsWithContext(ctx context.Context) *SyncUserInfoParams {
	var ()
	return &SyncUserInfoParams{

		Context: ctx,
	}
}

// NewSyncUserInfoParamsWithHTTPClient creates a new SyncUserInfoParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSyncUserInfoParamsWithHTTPClient(client *http.Client) *SyncUserInfoParams {
	var ()
	return &SyncUserInfoParams{
		HTTPClient: client,
	}
}

/*SyncUserInfoParams contains all the parameters to send to the API endpoint
for the sync user info operation typically these are written to a http.Request
*/
type SyncUserInfoParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the sync user info params
func (o *SyncUserInfoParams) WithTimeout(timeout time.Duration) *SyncUserInfoParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the sync user info params
func (o *SyncUserInfoParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the sync user info params
func (o *SyncUserInfoParams) WithContext(ctx context.Context) *SyncUserInfoParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the sync user info params
func (o *SyncUserInfoParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the sync user info params
func (o *SyncUserInfoParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the sync user info params
func (o *SyncUserInfoParams) WithHTTPClient(client *http.Client) *SyncUserInfoParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the sync user info params
func (o *SyncUserInfoParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the sync user info params
func (o *SyncUserInfoParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SyncUserInfoParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the sync user info params
func (o *SyncUserInfoParams) WithNamespace(namespace string) *SyncUserInfoParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the sync user info params
func (o *SyncUserInfoParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *SyncUserInfoParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// query param namespace
	qrNamespace := o.Namespace
	qNamespace := qrNamespace
	if qNamespace != "" {
		if err := r.SetQueryParam("namespace", qNamespace); err != nil {
			return err
		}
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
