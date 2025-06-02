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

// NewGetDLCItemConfigHistoryParams creates a new GetDLCItemConfigHistoryParams object
// with the default values initialized.
func NewGetDLCItemConfigHistoryParams() *GetDLCItemConfigHistoryParams {
	var ()
	return &GetDLCItemConfigHistoryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetDLCItemConfigHistoryParamsWithTimeout creates a new GetDLCItemConfigHistoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetDLCItemConfigHistoryParamsWithTimeout(timeout time.Duration) *GetDLCItemConfigHistoryParams {
	var ()
	return &GetDLCItemConfigHistoryParams{

		timeout: timeout,
	}
}

// NewGetDLCItemConfigHistoryParamsWithContext creates a new GetDLCItemConfigHistoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetDLCItemConfigHistoryParamsWithContext(ctx context.Context) *GetDLCItemConfigHistoryParams {
	var ()
	return &GetDLCItemConfigHistoryParams{

		Context: ctx,
	}
}

// NewGetDLCItemConfigHistoryParamsWithHTTPClient creates a new GetDLCItemConfigHistoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetDLCItemConfigHistoryParamsWithHTTPClient(client *http.Client) *GetDLCItemConfigHistoryParams {
	var ()
	return &GetDLCItemConfigHistoryParams{
		HTTPClient: client,
	}
}

/*GetDLCItemConfigHistoryParams contains all the parameters to send to the API endpoint
for the get dlc item config history operation typically these are written to a http.Request
*/
type GetDLCItemConfigHistoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*DLCID*/
	DLCID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get dlc item config history params
func (o *GetDLCItemConfigHistoryParams) WithTimeout(timeout time.Duration) *GetDLCItemConfigHistoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get dlc item config history params
func (o *GetDLCItemConfigHistoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get dlc item config history params
func (o *GetDLCItemConfigHistoryParams) WithContext(ctx context.Context) *GetDLCItemConfigHistoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get dlc item config history params
func (o *GetDLCItemConfigHistoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get dlc item config history params
func (o *GetDLCItemConfigHistoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get dlc item config history params
func (o *GetDLCItemConfigHistoryParams) WithHTTPClient(client *http.Client) *GetDLCItemConfigHistoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get dlc item config history params
func (o *GetDLCItemConfigHistoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get dlc item config history params
func (o *GetDLCItemConfigHistoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetDLCItemConfigHistoryParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get dlc item config history params
func (o *GetDLCItemConfigHistoryParams) WithNamespace(namespace string) *GetDLCItemConfigHistoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get dlc item config history params
func (o *GetDLCItemConfigHistoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithDLCID adds the dLCID to the get dlc item config history params
func (o *GetDLCItemConfigHistoryParams) WithDLCID(dLCID string) *GetDLCItemConfigHistoryParams {
	o.SetDLCID(dLCID)
	return o
}

// SetDLCID adds the dlcId to the get dlc item config history params
func (o *GetDLCItemConfigHistoryParams) SetDLCID(dLCID string) {
	o.DLCID = dLCID
}

// WriteToRequest writes these params to a swagger request
func (o *GetDLCItemConfigHistoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param dlcId
	qrDLCID := o.DLCID
	qDLCID := qrDLCID
	if qDLCID != "" {
		if err := r.SetQueryParam("dlcId", qDLCID); err != nil {
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
