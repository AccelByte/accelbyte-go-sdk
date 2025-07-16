// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package store

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

// Deprecated: 2025-07-16 - Use GetCatalogDefinitionCatalogType<EnumValue>Constant instead.
// Get the enum in GetCatalogDefinitionParams
const (
	GetCatalogDefinitionAPPConstant      = "APP"
	GetCatalogDefinitionCATEGORYConstant = "CATEGORY"
	GetCatalogDefinitionITEMConstant     = "ITEM"
	GetCatalogDefinitionSECTIONConstant  = "SECTION"
	GetCatalogDefinitionVIEWConstant     = "VIEW"
)

// Get the enum in GetCatalogDefinitionParams
const (
	GetCatalogDefinitionCatalogTypeAPPConstant      = "APP"
	GetCatalogDefinitionCatalogTypeCATEGORYConstant = "CATEGORY"
	GetCatalogDefinitionCatalogTypeITEMConstant     = "ITEM"
	GetCatalogDefinitionCatalogTypeSECTIONConstant  = "SECTION"
	GetCatalogDefinitionCatalogTypeVIEWConstant     = "VIEW"
)

// NewGetCatalogDefinitionParams creates a new GetCatalogDefinitionParams object
// with the default values initialized.
func NewGetCatalogDefinitionParams() *GetCatalogDefinitionParams {
	var ()
	return &GetCatalogDefinitionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetCatalogDefinitionParamsWithTimeout creates a new GetCatalogDefinitionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetCatalogDefinitionParamsWithTimeout(timeout time.Duration) *GetCatalogDefinitionParams {
	var ()
	return &GetCatalogDefinitionParams{

		timeout: timeout,
	}
}

// NewGetCatalogDefinitionParamsWithContext creates a new GetCatalogDefinitionParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetCatalogDefinitionParamsWithContext(ctx context.Context) *GetCatalogDefinitionParams {
	var ()
	return &GetCatalogDefinitionParams{

		Context: ctx,
	}
}

// NewGetCatalogDefinitionParamsWithHTTPClient creates a new GetCatalogDefinitionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetCatalogDefinitionParamsWithHTTPClient(client *http.Client) *GetCatalogDefinitionParams {
	var ()
	return &GetCatalogDefinitionParams{
		HTTPClient: client,
	}
}

/*GetCatalogDefinitionParams contains all the parameters to send to the API endpoint
for the get catalog definition operation typically these are written to a http.Request
*/
type GetCatalogDefinitionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*CatalogType*/
	CatalogType string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get catalog definition params
func (o *GetCatalogDefinitionParams) WithTimeout(timeout time.Duration) *GetCatalogDefinitionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get catalog definition params
func (o *GetCatalogDefinitionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get catalog definition params
func (o *GetCatalogDefinitionParams) WithContext(ctx context.Context) *GetCatalogDefinitionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get catalog definition params
func (o *GetCatalogDefinitionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get catalog definition params
func (o *GetCatalogDefinitionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get catalog definition params
func (o *GetCatalogDefinitionParams) WithHTTPClient(client *http.Client) *GetCatalogDefinitionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get catalog definition params
func (o *GetCatalogDefinitionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get catalog definition params
func (o *GetCatalogDefinitionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetCatalogDefinitionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get catalog definition params
func (o *GetCatalogDefinitionParams) WithNamespace(namespace string) *GetCatalogDefinitionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get catalog definition params
func (o *GetCatalogDefinitionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithCatalogType adds the catalogType to the get catalog definition params
func (o *GetCatalogDefinitionParams) WithCatalogType(catalogType string) *GetCatalogDefinitionParams {
	o.SetCatalogType(catalogType)
	return o
}

// SetCatalogType adds the catalogType to the get catalog definition params
func (o *GetCatalogDefinitionParams) SetCatalogType(catalogType string) {
	o.CatalogType = catalogType
}

// WriteToRequest writes these params to a swagger request
func (o *GetCatalogDefinitionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param catalogType
	qrCatalogType := o.CatalogType
	qCatalogType := qrCatalogType
	if qCatalogType != "" {
		if err := r.SetQueryParam("catalogType", qCatalogType); err != nil {
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
