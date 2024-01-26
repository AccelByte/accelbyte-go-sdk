// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package key_group

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

// NewGetKeyGroupByBoothNameParams creates a new GetKeyGroupByBoothNameParams object
// with the default values initialized.
func NewGetKeyGroupByBoothNameParams() *GetKeyGroupByBoothNameParams {
	var ()
	return &GetKeyGroupByBoothNameParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetKeyGroupByBoothNameParamsWithTimeout creates a new GetKeyGroupByBoothNameParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetKeyGroupByBoothNameParamsWithTimeout(timeout time.Duration) *GetKeyGroupByBoothNameParams {
	var ()
	return &GetKeyGroupByBoothNameParams{

		timeout: timeout,
	}
}

// NewGetKeyGroupByBoothNameParamsWithContext creates a new GetKeyGroupByBoothNameParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetKeyGroupByBoothNameParamsWithContext(ctx context.Context) *GetKeyGroupByBoothNameParams {
	var ()
	return &GetKeyGroupByBoothNameParams{

		Context: ctx,
	}
}

// NewGetKeyGroupByBoothNameParamsWithHTTPClient creates a new GetKeyGroupByBoothNameParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetKeyGroupByBoothNameParamsWithHTTPClient(client *http.Client) *GetKeyGroupByBoothNameParams {
	var ()
	return &GetKeyGroupByBoothNameParams{
		HTTPClient: client,
	}
}

/*GetKeyGroupByBoothNameParams contains all the parameters to send to the API endpoint
for the get key group by booth name operation typically these are written to a http.Request
*/
type GetKeyGroupByBoothNameParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*BoothName*/
	BoothName string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get key group by booth name params
func (o *GetKeyGroupByBoothNameParams) WithTimeout(timeout time.Duration) *GetKeyGroupByBoothNameParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get key group by booth name params
func (o *GetKeyGroupByBoothNameParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get key group by booth name params
func (o *GetKeyGroupByBoothNameParams) WithContext(ctx context.Context) *GetKeyGroupByBoothNameParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get key group by booth name params
func (o *GetKeyGroupByBoothNameParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get key group by booth name params
func (o *GetKeyGroupByBoothNameParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get key group by booth name params
func (o *GetKeyGroupByBoothNameParams) WithHTTPClient(client *http.Client) *GetKeyGroupByBoothNameParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get key group by booth name params
func (o *GetKeyGroupByBoothNameParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get key group by booth name params
func (o *GetKeyGroupByBoothNameParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetKeyGroupByBoothNameParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get key group by booth name params
func (o *GetKeyGroupByBoothNameParams) WithNamespace(namespace string) *GetKeyGroupByBoothNameParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get key group by booth name params
func (o *GetKeyGroupByBoothNameParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithBoothName adds the boothName to the get key group by booth name params
func (o *GetKeyGroupByBoothNameParams) WithBoothName(boothName string) *GetKeyGroupByBoothNameParams {
	o.SetBoothName(boothName)
	return o
}

// SetBoothName adds the boothName to the get key group by booth name params
func (o *GetKeyGroupByBoothNameParams) SetBoothName(boothName string) {
	o.BoothName = boothName
}

// WriteToRequest writes these params to a swagger request
func (o *GetKeyGroupByBoothNameParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param boothName
	qrBoothName := o.BoothName
	qBoothName := qrBoothName
	if qBoothName != "" {
		if err := r.SetQueryParam("boothName", qBoothName); err != nil {
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
