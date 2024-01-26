// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package misc

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

// NewGetCountryGroupsParams creates a new GetCountryGroupsParams object
// with the default values initialized.
func NewGetCountryGroupsParams() *GetCountryGroupsParams {
	var ()
	return &GetCountryGroupsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetCountryGroupsParamsWithTimeout creates a new GetCountryGroupsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetCountryGroupsParamsWithTimeout(timeout time.Duration) *GetCountryGroupsParams {
	var ()
	return &GetCountryGroupsParams{

		timeout: timeout,
	}
}

// NewGetCountryGroupsParamsWithContext creates a new GetCountryGroupsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetCountryGroupsParamsWithContext(ctx context.Context) *GetCountryGroupsParams {
	var ()
	return &GetCountryGroupsParams{

		Context: ctx,
	}
}

// NewGetCountryGroupsParamsWithHTTPClient creates a new GetCountryGroupsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetCountryGroupsParamsWithHTTPClient(client *http.Client) *GetCountryGroupsParams {
	var ()
	return &GetCountryGroupsParams{
		HTTPClient: client,
	}
}

/*GetCountryGroupsParams contains all the parameters to send to the API endpoint
for the get country groups operation typically these are written to a http.Request
*/
type GetCountryGroupsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*GroupCode
	  groupCode, only accept alphabet and whitespace

	*/
	GroupCode *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get country groups params
func (o *GetCountryGroupsParams) WithTimeout(timeout time.Duration) *GetCountryGroupsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get country groups params
func (o *GetCountryGroupsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get country groups params
func (o *GetCountryGroupsParams) WithContext(ctx context.Context) *GetCountryGroupsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get country groups params
func (o *GetCountryGroupsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get country groups params
func (o *GetCountryGroupsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get country groups params
func (o *GetCountryGroupsParams) WithHTTPClient(client *http.Client) *GetCountryGroupsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get country groups params
func (o *GetCountryGroupsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get country groups params
func (o *GetCountryGroupsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetCountryGroupsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get country groups params
func (o *GetCountryGroupsParams) WithNamespace(namespace string) *GetCountryGroupsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get country groups params
func (o *GetCountryGroupsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithGroupCode adds the groupCode to the get country groups params
func (o *GetCountryGroupsParams) WithGroupCode(groupCode *string) *GetCountryGroupsParams {
	o.SetGroupCode(groupCode)
	return o
}

// SetGroupCode adds the groupCode to the get country groups params
func (o *GetCountryGroupsParams) SetGroupCode(groupCode *string) {
	o.GroupCode = groupCode
}

// WriteToRequest writes these params to a swagger request
func (o *GetCountryGroupsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.GroupCode != nil {

		// query param groupCode
		var qrGroupCode string
		if o.GroupCode != nil {
			qrGroupCode = *o.GroupCode
		}
		qGroupCode := qrGroupCode
		if qGroupCode != "" {
			if err := r.SetQueryParam("groupCode", qGroupCode); err != nil {
				return err
			}
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
