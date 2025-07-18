// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dlc

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

// NewRestoreDLCItemConfigHistoryParams creates a new RestoreDLCItemConfigHistoryParams object
// with the default values initialized.
func NewRestoreDLCItemConfigHistoryParams() *RestoreDLCItemConfigHistoryParams {
	var ()
	return &RestoreDLCItemConfigHistoryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRestoreDLCItemConfigHistoryParamsWithTimeout creates a new RestoreDLCItemConfigHistoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRestoreDLCItemConfigHistoryParamsWithTimeout(timeout time.Duration) *RestoreDLCItemConfigHistoryParams {
	var ()
	return &RestoreDLCItemConfigHistoryParams{

		timeout: timeout,
	}
}

// NewRestoreDLCItemConfigHistoryParamsWithContext creates a new RestoreDLCItemConfigHistoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewRestoreDLCItemConfigHistoryParamsWithContext(ctx context.Context) *RestoreDLCItemConfigHistoryParams {
	var ()
	return &RestoreDLCItemConfigHistoryParams{

		Context: ctx,
	}
}

// NewRestoreDLCItemConfigHistoryParamsWithHTTPClient creates a new RestoreDLCItemConfigHistoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRestoreDLCItemConfigHistoryParamsWithHTTPClient(client *http.Client) *RestoreDLCItemConfigHistoryParams {
	var ()
	return &RestoreDLCItemConfigHistoryParams{
		HTTPClient: client,
	}
}

/*RestoreDLCItemConfigHistoryParams contains all the parameters to send to the API endpoint
for the restore dlc item config history operation typically these are written to a http.Request
*/
type RestoreDLCItemConfigHistoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ID*/
	ID string
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the restore dlc item config history params
func (o *RestoreDLCItemConfigHistoryParams) WithTimeout(timeout time.Duration) *RestoreDLCItemConfigHistoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the restore dlc item config history params
func (o *RestoreDLCItemConfigHistoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the restore dlc item config history params
func (o *RestoreDLCItemConfigHistoryParams) WithContext(ctx context.Context) *RestoreDLCItemConfigHistoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the restore dlc item config history params
func (o *RestoreDLCItemConfigHistoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the restore dlc item config history params
func (o *RestoreDLCItemConfigHistoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the restore dlc item config history params
func (o *RestoreDLCItemConfigHistoryParams) WithHTTPClient(client *http.Client) *RestoreDLCItemConfigHistoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the restore dlc item config history params
func (o *RestoreDLCItemConfigHistoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the restore dlc item config history params
func (o *RestoreDLCItemConfigHistoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RestoreDLCItemConfigHistoryParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithID adds the idVar to the restore dlc item config history params
func (o *RestoreDLCItemConfigHistoryParams) WithID(idVar string) *RestoreDLCItemConfigHistoryParams {
	o.SetID(idVar)
	return o
}

// SetID adds the id to the restore dlc item config history params
func (o *RestoreDLCItemConfigHistoryParams) SetID(idVar string) {
	o.ID = idVar
}

// WithNamespace adds the namespace to the restore dlc item config history params
func (o *RestoreDLCItemConfigHistoryParams) WithNamespace(namespace string) *RestoreDLCItemConfigHistoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the restore dlc item config history params
func (o *RestoreDLCItemConfigHistoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *RestoreDLCItemConfigHistoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param id
	if err := r.SetPathParam("id", o.ID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
