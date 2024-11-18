// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package deployment_v2

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
)

// NewGetListOfDeploymentV2Params creates a new GetListOfDeploymentV2Params object
// with the default values initialized.
func NewGetListOfDeploymentV2Params() *GetListOfDeploymentV2Params {
	var ()
	return &GetListOfDeploymentV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetListOfDeploymentV2ParamsWithTimeout creates a new GetListOfDeploymentV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetListOfDeploymentV2ParamsWithTimeout(timeout time.Duration) *GetListOfDeploymentV2Params {
	var ()
	return &GetListOfDeploymentV2Params{

		timeout: timeout,
	}
}

// NewGetListOfDeploymentV2ParamsWithContext creates a new GetListOfDeploymentV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetListOfDeploymentV2ParamsWithContext(ctx context.Context) *GetListOfDeploymentV2Params {
	var ()
	return &GetListOfDeploymentV2Params{

		Context: ctx,
	}
}

// NewGetListOfDeploymentV2ParamsWithHTTPClient creates a new GetListOfDeploymentV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetListOfDeploymentV2ParamsWithHTTPClient(client *http.Client) *GetListOfDeploymentV2Params {
	var ()
	return &GetListOfDeploymentV2Params{
		HTTPClient: client,
	}
}

/*GetListOfDeploymentV2Params contains all the parameters to send to the API endpoint
for the get list of deployment v2 operation typically these are written to a http.Request
*/
type GetListOfDeploymentV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *csmclientmodels.ApimodelGetDeploymentListV2Request
	/*Namespace
	  Game Namespace

	*/
	Namespace string
	/*Limit
	  Limit

	*/
	Limit *int64
	/*Offset
	  Offset

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get list of deployment v2 params
func (o *GetListOfDeploymentV2Params) WithTimeout(timeout time.Duration) *GetListOfDeploymentV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get list of deployment v2 params
func (o *GetListOfDeploymentV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get list of deployment v2 params
func (o *GetListOfDeploymentV2Params) WithContext(ctx context.Context) *GetListOfDeploymentV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get list of deployment v2 params
func (o *GetListOfDeploymentV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get list of deployment v2 params
func (o *GetListOfDeploymentV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get list of deployment v2 params
func (o *GetListOfDeploymentV2Params) WithHTTPClient(client *http.Client) *GetListOfDeploymentV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get list of deployment v2 params
func (o *GetListOfDeploymentV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get list of deployment v2 params
func (o *GetListOfDeploymentV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetListOfDeploymentV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the get list of deployment v2 params
func (o *GetListOfDeploymentV2Params) WithBody(body *csmclientmodels.ApimodelGetDeploymentListV2Request) *GetListOfDeploymentV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the get list of deployment v2 params
func (o *GetListOfDeploymentV2Params) SetBody(body *csmclientmodels.ApimodelGetDeploymentListV2Request) {
	o.Body = body
}

// WithNamespace adds the namespace to the get list of deployment v2 params
func (o *GetListOfDeploymentV2Params) WithNamespace(namespace string) *GetListOfDeploymentV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get list of deployment v2 params
func (o *GetListOfDeploymentV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the get list of deployment v2 params
func (o *GetListOfDeploymentV2Params) WithLimit(limit *int64) *GetListOfDeploymentV2Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get list of deployment v2 params
func (o *GetListOfDeploymentV2Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get list of deployment v2 params
func (o *GetListOfDeploymentV2Params) WithOffset(offset *int64) *GetListOfDeploymentV2Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get list of deployment v2 params
func (o *GetListOfDeploymentV2Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetListOfDeploymentV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
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
